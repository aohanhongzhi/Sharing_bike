import requests
from lxml import etree
import re
class ProxySpider(object):
    headers={
        "Accept":"text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8",
        "Accept-Encoding":"gzip, deflate",
        "Accept-Language":"zh-CN,zh;q=0.8,en-US;q=0.5,en;q=0.3",
        "Connection":"keep-alive",
        "Host":"www.kuaidaili.com",
        "Referer":"http://www.kuaidaili.com/free/inha/2/",
        "User-Agent":"Mozilla/5.0 (Windows NT 10.0; rv:55.0) Gecko/20100101 Firefox/55.0"
    }
    url='http://www.kuaidaili.com/free/inha/'
    #页数
    def __init__(self):
        #存放代理List
        self.ipProxy=[]
    def spdier(self,page):
        response=requests.get(self.url+str(page),headers=self.headers)
        return self.getRondomProxy(response)

    def getRondomProxy(self,response):
        #生成选择器
        selector=etree.HTML(response.text)
        ipTrs=selector.xpath('//table//tr[position()>1]')
        for ipTr in ipTrs:
            ip=ipTr.xpath('td[1]/text()')[0]
            port=ipTr.xpath('td[2]/text()')[0]
            type=ipTr.xpath('td[4]/text()')[0]
            fullIp={type:ip+':'+port}
            self.ipProxy.append(fullIp)
        #遍历所有tr,筛选IP

        return self.ipProxy
