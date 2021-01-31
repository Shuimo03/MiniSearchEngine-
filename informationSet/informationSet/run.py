# debug
from scrapy import cmdline

name = 'doubanBook' #更换为指定文件
cmd = 'scrapy crawl {0}'.format(name)
cmdline.execute(cmd.split())