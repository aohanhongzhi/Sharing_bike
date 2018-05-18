 共享单车调度系统
====================
 2017年国家级创训项目
 
# 开发语言
* Java
* Python
* Javascipt
 
# 系统框架
* Spring+SpringMVC+MyBatis
* 后期考虑更换分布式框架，还未学习。
 
# 运行环境
* Python3
* Linux/Mac/Windows

# ofo爬虫
* 位于ofoSpider文件夹下，具体用法详见内部。
 
# Mobike爬虫
* 位于MobikeSpider文件夹下，具体用法详见内部。
 
# 预测方法
* 位于CNN_SharingBikePrediction文件夹下，数据集也在里面，demo采用的是NYC2011年的数据。
* 采用基于CNN的三层bp神经网络，为了简化问题，将每个区域内单独进行预测。忽视集群间的相互关系。
* 其他方法推荐参考郑宇博士的Sharing_bike项目和论文。
