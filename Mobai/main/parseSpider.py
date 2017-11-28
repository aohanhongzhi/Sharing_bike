import json
import os
from main.mobaiSpider import MobaiSpdier
from main.HHUMobais import HhuMobais
from util.standardTime import getTime
from util.convertTime import converTime
import time
#数据格式
#{'bikeIds':[{'distX':distX,'distY':distY,'time':time}]}
class ParseResult(object):
    def __init__(self,eastLen,westLen,southLen,northLen,utilTime):
        self.spider = HhuMobais()
        #获取截至时间转换
        utilLong=converTime(utilTime)
        while(converTime(getTime())<utilLong):
            #在截至时间之前一直进行爬爬
            self.spider.eastSpider(118.786018, 31.911178, eastLen)
            self. spider.westSpider(118.786018, 31.911178, westLen)
            self.spider.southSpider(118.786018, 31.911178, southLen)
            self.spider.northSpider(118.786018, 31.911178, northLen)
            time.sleep(3)
    #进行去重
    # def outRepetition(self):
    #     for bike in self.spider.allBikes:
    #         realDatas=[]
    #         for data in self.spider.result[bike]:
    #             if len(realDatas)==0:
    #                 realDatas.append(data)
    #             for copyData in realDatas:
    #                 if not (data['distX']==copyData['distX'] and data['distY']==copyData['distY']):
    #                     realDatas.append(data)
    #         self.spider.result[bike]=realDatas

    def parse(self):
        # path = os.path.split(os.path.abspath(os.path.dirname(__file__)))[0]
        # realPath = os.path.join(path, 'result\\result.txt')
        # #去重
        # #self.outRepetition()
        # with open(realPath, 'a') as f:
        #     for bike in self.spider.allBikes:
        #         f.write(bike + '\n')
        #         for data in self.spider.result[bike]:
        #             f.write(json.dumps(data) + '\n')
        print(self.spider.result)
if __name__=='__main__':
    ParseResult(500,500, 500,500,'15:04:40').parse()