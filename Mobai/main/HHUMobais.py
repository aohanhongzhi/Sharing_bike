from main import mobaiSpider
from util import standardTime
import time
import os
import json
#经度（大）增加纬度不变向东
#经度减小纬度不变向西         ---（0.001对应111.3M)

#纬度增加纬度不变向北
#纬度减小纬度不变向北         ----（0.0011）相隔103.9m

class HhuMobais(object):
    # 所有的单车
    allBikes = set()
    # 爬取的结果，数据格式{'bikeId':[{'distX':distX,'distY':distY,'time':time}]}
    result = {}
    def __init__(self):
        self.spider=mobaiSpider.MobaiSpdier()
        pass

    def eastSpider(self,longitude,latitude,length):
        #向东方向扩展每次扩展111m
        number=length/110
        while number>0:
            longitude+=0.001
            #遍历数据集
            datas=self.spider.spider(longitude,latitude)
            for data in datas:
                bikeId = data['bikeIds']
                distX = data['distX']
                distY = data['distY']
                if bikeId not in self.allBikes:
                    self.allBikes.add(bikeId)
                    self.result[bikeId] = []

                # 获取当前时间
                currentTime = standardTime.getTime()
                json = {'distX': distX, 'distY': distY, 'time': currentTime}
                if len(self.result[bikeId]) == 0:
                    self.result[bikeId].append(json)
                else:
                    isExist=False
                    for i in self.result[bikeId]:
                        if i['distX']==distX and i['distY']==distY:
                            isExist=True
                    if (not isExist):
                        self.result[bikeId].append(json)
            time.sleep(0.02)
            number=number-1
    def westSpider(self,longitude,latitude,length):
        #向西方向扩展每次扩展111m
        number=length/110
        while number>0:
            longitude-=0.001
            datas=self.spider.spider(longitude,latitude)
            for data in datas:
                bikeId = data['bikeIds']
                distX = data['distX']
                distY = data['distY']
                if bikeId not in self.allBikes:
                    self.allBikes.add(bikeId)
                    self.result[bikeId] = []
                    # 获取当前时间
                    currentTime = standardTime.getTime()
                    json = {'distX': distX, 'distY': distY, 'time': currentTime}
                    if len(self.result[bikeId]) == 0:
                        self.result[bikeId].append(json)
                    else:
                        isExist = False
                        for i in self.result[bikeId]:
                            if i['distX'] == distX and i['distY'] == distY:
                                isExist = True
                        if (not isExist):
                            self.result[bikeId].append(json)
            time.sleep(0.02)
            number=number-1
    def northSpider(self,longitude,latitude,length):
        #向北方向扩展每次扩展111m
        number=length/110
        while number>0:
            latitude+=0.0011
            datas=self.spider.spider(longitude,latitude)
            for data in datas:
                bikeId = data['bikeIds']
                distX = data['distX']
                distY = data['distY']
                if bikeId not in self.allBikes:
                    self.allBikes.add(bikeId)
                    self.result[bikeId] = []
                    # 获取当前时间
                    currentTime = standardTime.getTime()
                    json = {'distX': distX, 'distY': distY, 'time': currentTime}
                    if len(self.result[bikeId]) == 0:
                        self.result[bikeId].append(json)
                    else:
                        isExist = False
                        for i in self.result[bikeId]:
                            if i['distX'] == distX and i['distY'] == distY:
                                isExist = True
                        if (not isExist):
                            self.result[bikeId].append(json)
            time.sleep(0.02)
            number=number-1
    def southSpider(self,longitude,latitude,length):
        #向北方向扩展每次扩展111m
        number=length/110
        while number>0:
            latitude-=0.0011
            datas=self.spider.spider(longitude,latitude)
            for data in datas:
                bikeId = data['bikeIds']
                distX = data['distX']
                distY = data['distY']
                if bikeId not in self.allBikes:
                    self.allBikes.add(bikeId)
                    self.result[bikeId] = []
                    # 获取当前时间
                    currentTime = standardTime.getTime()
                    json = {'distX': distX, 'distY': distY, 'time': currentTime}
                    if len(self.result[bikeId]) == 0:
                        self.result[bikeId].append(json)
                    else:
                        isExist = False
                        for i in self.result[bikeId]:
                            if i['distX'] == distX and i['distY'] == distY:
                                isExist = True
                        if (not isExist):
                            self.result[bikeId].append(json)
            time.sleep(0.02)
            number=number-1
