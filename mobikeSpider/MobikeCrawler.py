import datetime
import os
import os.path
import random
import sqlite3
import threading
import time
# import ujson
from concurrent.futures import ThreadPoolExecutor
import numpy as np
import requests


class Crawler:
    def __init__(self):
        self.headers = {
            'User-Agent': 'Mozilla/5.0 (iPhone; CPU iPhone OS 10_3_1 like Mac OS X) AppleWebKit/603.1.30 (KHTML, like Gecko) Mobile/14E304 MicroMessenger/6.5.7 NetType/WIFI Language/zh_CN',
            'Content-Type': 'application/x-www-form-urlencoded',
            'Referer': 'https://servicewechat.com/wx80f809371ae33eda/23/page-frame.html',
        }
        self.url = 'https://mwx.mobike.com/mobike-api/rent/nearbyBikesInfo.do'

    def Solve(self):
        left = 31.910006
        top = 118.792185
        right = 31.91833
        bottom = 118.780598
        offset = 0.002
        vis=[]
        lat_range = np.arange(left, right, offset)
        lon_range = []
        for lat in lat_range:
            lon_range = np.arange(top, bottom, -offset)
            for lon in lon_range:
                data = {
                    'longitude': lon,  # 经度
                    'latitude': lat,  # 纬度
                    'citycode': '025',
                    'errMsg': 'getMapCenterLocation:ok'
                }
                z = requests.post(self.url, data=data, headers=self.headers, verify=False)
                z = z.json()['object']
                for item in z:
                    if item["bikeIds"] in vis:
                        continue
                    else:
                        vis.append(item["bikeIds"])
                        print("{")
                        print("\"bikeid\":", end="")
                        print("\"", end="")
                        print(item["bikeIds"], end="")
                        print("\",")
                        print("\"center\":", end="")
                        print("\"", end="")
                        print(item["distX"], end="")
                        print(",", end="")
                        print(item["distY"], end="")
                        print("\",")
                        print("\"type\": 1,")
                        print("\"subDistricts\": []")
                        print("},")
        print(lat_range)
        print(lon_range)
test = Crawler()
test.Solve()