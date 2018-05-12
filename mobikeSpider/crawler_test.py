import datetime
import json
import os
import os.path
import sqlite3
import threading
import time
from concurrent.futures import ThreadPoolExecutor

import numpy as np
import pandas as pd
import requests
from configparser import ConfigParser

from coordTransform_utils import bd09_to_gcj02, bd09_to_wgs84


class Crawler:
    def __init__(self):
        self.start_time = datetime.datetime.now()
        self.csv_path = "./db/" + datetime.datetime.now().strftime("%Y%m%d")
        os.makedirs(self.csv_path, exist_ok=True)
        self.csv_name = self.csv_path + "/" + datetime.datetime.now().strftime("%Y%m%d-%H%M%S")+ '.csv'
        self.db_name = "./temp.db"
        self.lock = threading.Lock()
        self.total = 0
        self.done = 0
        self.bikes_count = 0
        cfg = ConfigParser()
        cfg.read('config.ini', encoding='utf-8')
        self.config = cfg

    def get_nearby_bikes(self, args):
        try:
            url = "https://mwx.mobike.com/mobike-api/rent/nearbyBikesInfo.do"

            payload = "latitude=%s&longitude=%s&errMsg=getMapCenterLocation" % (args[0], args[1])

            headers = {
                'charset': "utf-8",
                'platform': "4",
                "referer":"https://servicewechat.com/wx40f112341ae33edb/1/",
                'content-type': "application/x-www-form-urlencoded",
                'user-agent': "MicroMessenger/6.5.4.1000 NetType/WIFI Language/zh_CN",
                'host': "mwx.mobike.com",
                'connection': "Keep-Alive",
                'accept-encoding': "gzip",
                'cache-control': "no-cache"
            }

            self.request(headers, args, url)
        except Exception as ex:
            print(ex)

    def coord_transform(self, lng, lat):
        coord = self.config.get("DEFAULT", "coord")
        if coord == "bd-09":
            return lng, lat
        if coord == "gcj02":
            return bd09_to_gcj02(lng, lat)
        if coord == "WGS84":
            return bd09_to_wgs84(lng, lat)

    def request(self, headers, args, url):
        response = requests.request(
            "GET", url, headers=headers,
            timeout=self.config.getint("DEFAULT", "timeout"), verify=False
        )

        if response.status_code!=200:
            print("出错咯！", response.text)

            if "无效的token" in response.text:
                os._exit(-1)
            return

        with self.lock:
            with self.connect_db() as c:
                try:
                    decoded = json.loads(response.text)['msg']
                    self.done += 1
                    for x in decoded:
                        self.bikes_count += 1
                        x_lng, x_lat = self.coord_transform(x['lng'], x['lat'])

                        if x['brand'] == 'ofo':
                            c.execute("INSERT OR IGNORE INTO ofo VALUES (%d,'%s',%f,%f)" % (
                                int(time.time()) * 1000, x['id'], x_lat, x_lng))
                        else:
                            c.execute("INSERT OR IGNORE INTO mobike VALUES (%d,'%s',%f,%f)" % (
                                int(time.time()) * 1000, x['id'], x_lat, x_lng))

                    timespent = datetime.datetime.now() - self.start_time
                    percent = self.done / self.total
                    total = timespent / percent
                    print("位置 %s, 未去重单车数量 %s, 进度 %0.2f%%, 速度 %0.2f个/分钟, 总时间 %s, 剩余时间 %s" % (
                        args, self.bikes_count, percent * 100, self.done / timespent.total_seconds() * 60, total, total - timespent))
                except Exception as ex:
                    print(ex)

    def connect_db(self):
        return sqlite3.connect(self.db_name, uri=True)

    def start(self):
        left = 31.912714
        top = 118.78853
        right = 31.912823
        bottom = 118.78559

        offset = 0.002

        if os.path.isfile(self.db_name):
            os.remove(self.db_name)

        try:
            with sqlite3.connect(self.db_name) as c:
                c.execute('''CREATE TABLE mobike
                    (Time DATETIME, bikeIds VARCHAR(12), bikeType TINYINT,distId INTEGER,distNum TINYINT, type TINYINT, x DOUBLE, y DOUBLE)''')
        except Exception as ex:
            pass

        executor = ThreadPoolExecutor(max_workers=250)
        print("Start")
        self.total = 0
        lat_range = np.arange(left, right, -offset)
        for lat in lat_range:
            lon_range = np.arange(top, bottom, offset)
            for lon in lon_range:
                self.total += 1
                executor.submit(self.get_nearby_bikes, (lat, lon))

        executor.shutdown()
        self.group_data()

    def generate_create_table_sql(self, brand):
        return '''CREATE TABLE {0}
                (
                    "Time" DATETIME,
                    "bikeId" VARCHAR(12),
                    lat DOUBLE,
                    lon DOUBLE,
                    CONSTRAINT "{0}_bikeId_lat_lon_pk"
                        PRIMARY KEY (bikeId, lat, lon)
                );'''.format(brand)

    def group_data(self):
        print("正在导出数据")
        conn = self.connect_db()

        self.export_to_csv(conn, "mobike")
        self.export_to_csv(conn, "ofo")

    def export_to_csv(self, conn, brand):
        df = pd.read_sql_query("SELECT * FROM %s" % brand, conn, parse_dates=True)
        print(brand, "去重后数量", len(df))
        df['Time'] = pd.to_datetime(df['Time'], unit='ms').dt.tz_localize('UTC').dt.tz_convert('Asia/Chongqing')
        compress = None
        csv_file = self.csv_name + "-" + brand + ".csv"
        if self.config.getboolean("DEFAULT","compress"):
            compress = 'gzip'
            csv_file = self.csv_name + "-" + brand + ".csv.gz"

        df.to_csv(csv_file, header=False, index=False, compression=compress)

Crawler().start()
print("完成")
