# Define here the models for your scraped items
#
# See documentation in:
# https://docs.scrapy.org/en/latest/topics/items.html

import scrapy


class DoubanItem250(scrapy.Item):
    movie_name_cn = scrapy.Field()
    movie_name_alias = scrapy.Field()
    movie_director = scrapy.Field()
    movie_type = scrapy.Field()
    movie_country = scrapy.Field()
    movie_date = scrapy.Field()
    movie_actor = scrapy.Field()
    movie_rating = scrapy.Field()
    
class doubanMusicItem(scrapy.Item):
    music_cn = scrapy.Field() #歌曲名字
    music_singer = scrapy.Field() #歌手信息
    music_rating_nums = scrapy.Field() #歌曲评分

