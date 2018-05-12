import time
#得到标准化时间 年月日时分秒
def getdate():
    return time.strftime('%Y-%m-%d %H:%M:%S', time.localtime(time.time()))

#得到时间  时# 分秒
def getTime():
    return time.strftime('%H:%M:%S',time.localtime(time.time()))
