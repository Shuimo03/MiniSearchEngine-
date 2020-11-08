from scrapy import Request
from scrapy import Spider
from informationSet.items import DoubanItem250

class doubanTop250(Spider):
    name = "douban_top250"
    def start_requests(self):
        URL = "https://movie.douban.com/top250"

        yield Request(URL)

    def parse(self,response):
        item = DoubanItem250()
        movies = response.xpath('//ol[@class ="grid_view"]/li')

        for movie in movies:
            item['movie_name_cn'] = movie.xpath('.//div[@class="hd"]/a/span[1]/text()').extract()[0]
            item['movie_name_alias'] = movie.xpath('.//div[@class="hd"]/a/span[2]/text()').extract()[0]
            item['movie_director'] = movie.xpath('.//div[@class = "bd"]/p[1]/text()[1]').extract()[0].replace("\n", "").replace(" ", "").split('\xa0')[0]
            item['movie_type'] = movie.xpath('.//div[@class = "bd"]/p[1]/text()[2]').extract()[0].replace("\n", "").split("/")[2].replace('\xa0', '').replace(" ", "")
            item['movie_country'] = movie.xpath('.//div[@class = "bd"]/p[1]/text()[2]').extract()[0].replace("\n", "").split("/")[1].replace('\xa0', '')
            item['movie_date'] = movie.xpath('.//div[@class = "bd"]/p[1]/text()[2]').extract()[0].replace("\n", "").replace('\xa0', '').split("/")[0].replace(" ", "")
            item['movie_rating'] = movie.xpath('.//div[@class = "bd"]//div/span[2]/text()').extract()[0]
            yield item
        
        next_url = response.xpath('//span[@class="next"]/a/@href').extract()
        if next_url:
            next_url = 'https://movie.douban.com/top250' + next_url[0]
            yield Request(next_url)