共享单车调度系统
====================

# 运行环境
* Python3
* Linux/Mac/Windows

# ofo爬虫
* 位于ofoSpider文件夹下，具体用法详见内部。
 
# Mobike爬虫
* 位于MobikeSpider文件夹下，具体用法详见内部。
 
# 预测方法
* 采用基于CNN的三层bp神经网络，为了简化问题，将每个区域内单独进行预测。忽视集群间的相互关系。
* 其他方法推荐参考郑宇博士的Sharing_bike项目和论文。
