import requests
import json
from util import proxySpider
import random

class MobaiSpdier(object):
    url="https://mwx.mobike.com/mobike-api/rent/nearbyBikesInfo.do?userid=19316891946864128236&errMsg=getMapCenterLocation&offset=0.02&scope=5000"
    headers={
        'charset': "utf-8",
        'platform': "4",
        "referer": "https://servicewechat.com/wx40f112341ae33edb/1/",
        'content-type': "application/x-www-form-urlencoded",
        'user-agent': "MicroMessenger/6.5.4.1000 NetType/WIFI Language/zh_CN",
        'host': "mwx.mobike.com",
        'connection': "Keep-Alive",
        'accept-encoding': "gzip",
        'cache-control': "no-cache"
    }
    def __init__(self):
        pass
    #爬取数据
    def spider(self,longitude,latitude):
        self.longitude=longitude
        self.latitude=latitude
        #设置代理IP
        proxyList=proxySpider.ProxySpider().spdier(random.randint(1,1900))
        #生成随机数index
        index=random.randint(1,len(proxyList))
        params = {"longitude":longitude, "latitude":latitude}
        try:
            response=requests.get(url=self.url, params=params, headers=self.headers,proxies=proxyList[index])
        except Exception:
            response=self.spider(longitude,latitude)
        return self.parse(response)
    #解析数据
    def parse(self,response):
            datas={}
            try:
                datas=json.loads(response.text)['object']
                return datas
            except:
                return response

       #获取单车的id放入set集合去重
if __name__=='__main__':

    datas=MobaiSpdier().spider("118.786018","31.911178")
    print(datas)

