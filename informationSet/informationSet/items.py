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
    
class doubanAllMovie(scrapy.Item):
    movie_name_cn = scrapy.Field() #中文名
    movie_name_en = scrapy.Field() #外文名或者其他名
    movie_director = scrapy.Field() #电影主演
    movie_type = scrapy.Field() #电影类型
    #movie_language = scrapy.Field() #电影语言
    movie_date = scrapy.Field() #上映时间
    # movie_actor = scrapy.Field() #电影主演
    # movie_rating = scrapy.Field() #电影评分
