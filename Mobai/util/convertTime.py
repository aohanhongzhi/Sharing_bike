#将时分秒字符串 11:11:11格式转换为秒数

def converTime(time):
    hour=int(time.split(':')[0])
    minute=int(time.split(':')[1])
    second=int(time.split(':')[2])
    result=hour*60*60+minute*60+second
    return result
