import pandas as pd
import numpy as np
import matplotlib.pyplot as plt

data_path = 'Bike-Sharing-Dataset/hour.csv'
rides = pd.read_csv(data_path)
# 用于处理还有表头的
rides.head()
# 从第1行读到第240行
rides[:24*10].plot(x='dteday', y='cnt')
# 用xx.xx来引用表中元素 用plt.plot(rides.dteday,rides.cnt)画图
# plt.show()
dummies_fields = ['season', 'hr', 'mnth', 'weekday', 'weathersit']

for each in dummies_fields:
    # 将each所在列变量转换成新增的虚拟变量 如season(值有1~4)变为season1~season4
    dummies = pd.get_dummies( rides.loc[:, each], prefix=each )
    # axis=0为行1为列 将dummies接到rides的最后面一列
    rides = pd.concat( [rides, dummies], axis=1 )

drop_fields = [ 'season', 'hr', 'mnth', 'weekday', 'weathersit', 'instant', 'dteday', 'atemp' ]
# 按axis=1（列）删除数据
data = rides.drop(drop_fields, axis=1)
data.head()

standard_field = ['temp', 'hum', 'windspeed', 'casual', 'registered', 'cnt']
scaled_feature = {}
for each in standard_field:
    # mean()方法求均值 std方法求标准差(默认除以n-1)
    mean, std = data[each].mean(), data[each].std()
    scaled_feature[each] = [mean, std]
    # 使用z-score方法进行规范化 得到的结果是每列所有数据都聚集在0附近，方差为1
    data.loc[:, each] = (data.loc[:,each] - mean) / std
data.head()

# Save data for approximately 21 days 最末尾的21天作为测试集
test_data = data[-21*24:]

# 保留第1条到第倒数21*24之前的数据
data = data[:-21*24]

# Separate the data into features and targets
target_fields = ['cnt', 'casual', 'registered']
# 这三列targets作为输出层 其他的features作为输入层
features = data.drop( target_fields, axis=1 )
targets = data.loc[:, target_fields]

test_features = test_data.drop( target_fields, axis=1 )
test_targets = test_data.loc[:, target_fields]

# 最后60天之前作为训练集  最后60天作为验证集
train_features, train_targets = features[:-60*24], targets[:-60*24]
val_features, val_targets = features[-60*24:], targets[-60*24:]

class NeuralNetwork(object):
    def __init__( self, input_nodes, hidden_nodes, output_nodes, learning_rate ):
        # Set the number of nodes in input, hidden and output layers 设定输入层、隐藏层和输出层的node数目
        self.input_nodes = input_nodes
        self.hidden_nodes = hidden_nodes
        self.output_nodes = output_nodes

        # Set the learning rate
        self.lr = learning_rate

        # Initialize weights，初始化权重和学习速率
        # 正态分布 第一个参数为均值（分布的中心center） 第二个参数为标准差（分布的宽度） 第三个为size
        self.weights_input_to_hidden = np.random.normal( 0.0, self.input_nodes**-0.5, (self.input_nodes, self.hidden_nodes) )
        self.weights_hidden_to_output = np.random.normal( 0.0, self.hidden_nodes**-0.5, (self.hidden_nodes, self.output_nodes) )

        # Activation function 隐藏层的激励函数为sigmoid函数
        # lambda语句创建一个匿名函数。冒号前面是传入参数，后面是一个处理传入参数的单行表达式
        self.activation_function = lambda x : 1 / ( 1 + np.exp(-x) )

    def train(self, features, targets):
        '''
        Arguments
        ---------

        features: 2D array, each row is one data record, each column is a feature
        targets: 1D array of target values

        '''
        # shape[0]表示第2维的长度 [1]表示第1维的长度
        n_record = features.shape[0]
        # zeros(shape)返回一个给定形状的全0数组
        delta_weights_i_h = np.zeros( self.weights_input_to_hidden.shape )
        delta_weights_h_o = np.zeros( self.weights_hidden_to_output.shape )

        # 反向传播 Backward pass，使用梯度下降对权重进行更新 ###
        # 计算各权值w对整体误差产生的影响 通过用整体误差对各权值w求偏导求出
        for X, y in zip( features, targets ):
            # dot表示数组矩阵乘(一维数组是内积 以上维度是矩阵成绩) 矩阵mat类型的可以用点乘直接运算
            hidden_inputs = np.dot( X, self.weights_input_to_hidden )
            hidden_outputs = self.activation_function( hidden_inputs )

            final_inputs = np.dot( hidden_outputs, self.weights_hidden_to_output )
            final_outputs = final_inputs

            error = y - final_outputs
            # 实际误差
            output_error_term = error # error * 1
            # hidden_error表示sigma(输出层误差*hidden_output权重)
            hidden_error = np.dot( self.weights_hidden_to_output, output_error_term )
            # hidden_error_term表示隐含层的误差 = hidden_error*out(1-out)
            hidden_error_term = hidden_error * hidden_outputs * (1 - hidden_outputs) # f'(hidden_input)

            # 计算最终的偏导数值 X[:,None] = X 。即i
            # [:,None]的效果就是将二维数组按每行分割，最后形成一个三维数组
            delta_weights_i_h += hidden_error_term * X[:,None]
            delta_weights_h_o += output_error_term * hidden_outputs[:,None]

        # 更新各层之间的权重w  w=w-学习率*误差
        self.weights_input_to_hidden += self.lr * delta_weights_i_h/n_record
        self.weights_hidden_to_output += self.lr * delta_weights_h_o/n_record

    # 进行预测
    def run(self, features):
        #### 实现向前传播 Implement the forward pass here ####
        # 隐藏层 Hidden layer
        hidden_inputs = np.dot( features, self.weights_input_to_hidden )
        hidden_output = self.activation_function( hidden_inputs )
        # 输出层 Output layer
        final_inputs = np.dot( hidden_output, self.weights_hidden_to_output )
        final_outputs = final_inputs

        return final_outputs

# 均方误差
def MSE(y, Y):
    return np.mean( (y - Y)**2 )

import unittest
# 输入层 3个神经元
inputs = np.array([[0.5, -0.2, 0.1]])
# 输出层 1个结果单元
targets = np.array([[0.4]])
# 每个输入神经元对应于每个隐藏层神经元的权值 （隐藏层有2个神经元）
test_w_i_h = np.array([[0.1, -0.2],
                       [0.4, 0.5],
                       [-0.3, 0.2]])
# 隐藏层对输出层权值
test_w_h_o = np.array([[0.3],
                       [-0.1]])

class TestMethods(unittest.TestCase):

    ##########
    # Unit tests for data loading
    ##########

    def test_data_path(self):
        # Test that file path to dataset has been unaltered
        self.assertTrue(data_path.lower() == 'bike-sharing-dataset/hour.csv')

    def test_data_loaded(self):
        # Test that data frame loaded
        self.assertTrue(isinstance(rides, pd.DataFrame))

    ##########
    # Unit tests for network functionality
    ##########

    def test_activation(self):
        # 设置各层神经元的数目
        network = NeuralNetwork(3, 2, 1, 0.5)
        # Test that the activation function is a sigmoid
        self.assertTrue(np.all(network.activation_function(0.5) == 1/(1+np.exp(-0.5))))

    def test_train(self):
        # Test that weights are updated correctly on training
        network = NeuralNetwork(3, 2, 1, 0.5)
        network.weights_input_to_hidden = test_w_i_h.copy()
        network.weights_hidden_to_output = test_w_h_o.copy()

        network.train(inputs, targets)
        #allclose()函数用来检测两个矩阵是否相等
        self.assertTrue(np.allclose(network.weights_hidden_to_output,
                                    np.array([[ 0.37275328],
                                              [-0.03172939]])))
        self.assertTrue(np.allclose(network.weights_input_to_hidden,
                                    np.array([[ 0.10562014, -0.20185996],
                                              [0.39775194, 0.50074398],
                                              [-0.29887597, 0.19962801]])))

    def test_run(self):
        # Test correctness of run method
        network = NeuralNetwork(3, 2, 1, 0.5)
        network.weights_input_to_hidden = test_w_i_h.copy()
        network.weights_hidden_to_output = test_w_h_o.copy()

        self.assertTrue(np.allclose(network.run(inputs), 0.09998924))

suite = unittest.TestLoader().loadTestsFromModule(TestMethods())
unittest.TextTestRunner().run(suite)

import sys

### 设置超参数 ###
iterations = 2000
learning_rate = 0.8
hidden_nodes = 12 # 12个隐藏层神经元
output_nodes = 1  # 输出1个神经元

N_i = train_features.shape[1]
network = NeuralNetwork(N_i, hidden_nodes, output_nodes, learning_rate)

losses = {'train':[], 'validation':[]}
for ii in range(iterations):
    # np.random.choice(a,b)从一个int数字或1维数组里随机选取内容，并将选取结果放入b维数组中返回。
    batch = np.random.choice(train_features.index, size=128)
    # .shape返回行列数 .size返回元素数
    X, y = train_features.iloc[batch].values, train_targets.iloc[batch]['cnt']
    # 用训练集数据训练
    network.train(X, y)
    # 计算当前模型对训练集的预测损失度 和 对验证集的预测损失度
    train_loss = MSE(network.run(train_features).T, train_targets['cnt'].values)
    # run().T是将结果转置，如将1*m数组变成m*1数组
    val_loss = MSE(network.run(val_features).T, val_targets['cnt'].values)

    sys.stdout.write("\rProgress: {:2.1f}".format(100 * ii/float(iterations)) \
                     + "% ... Training loss: " + str(train_loss)[:5] \
                     + " ... Validation loss: " + str(val_loss)[:5]+"\n")
    # {:n.mf}表示整数位n位，浮点位m位小数。 str()[n:m]表示字符串的[n,m-1)位
    sys.stdout.flush()

    losses['train'].append(train_loss)
    losses['validation'].append(val_loss)

# 生成训练损失和验证损失的曲线图
plt.plot(losses['train'], label='Traning loss')
plt.plot(losses['validation'], label='Validation loss')
plt.legend()
plt.show()

# 生成预测数量和实际数量的曲线对比图
fig, ax = plt.subplots(figsize=(8, 4))
# 生成预测数据
mean, std = scaled_feature['cnt']
predictions = network.run(test_features).T * std + mean
ax.plot(predictions[0], label='Prediction')
ax.plot((test_targets['cnt'] * std + mean).values, label='Data')
# 设置x轴的范围
ax.set_xlim(right=len(predictions))
ax.legend()
dates = pd.to_datetime(rides.loc[test_data.index]['dteday'])
dates = dates.apply(lambda d: d.strftime('%b %d'))
# 设置x轴的标记点
ax.set_xticks(np.arange(len(dates))[12::24])
# 设置x轴的标注文本
_ = ax.set_xticklabels(dates[12::24], rotation=45)
# plt才有show函数，ax没有show
plt.show()

#########################################################################################
# 需要设置的参数：迭代次数、输入层神经元个数、隐藏层神经元个数、输出层神经元个数、学习率      #
# 需要传的参数：  输入神经元、输入层到隐藏层的权重、隐藏层到输出层的权重、输出层目标值神经元  #
#########################################################################################