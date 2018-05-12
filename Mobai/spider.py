from main.parseSpider import ParseResult
import os
import sys
rootPath=os.path.split(os.path.abspath(os.path.realpath(__file__)))[0]
sys.path.append(rootPath)
#参数说明，东、西、南、北距离，爬虫截至时间
ParseResult(500,500, 500,500,'12:35:00').parse()