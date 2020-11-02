from scrapy import Request
from scrapy import Spider
import json
from urllib.parse import quote
from informationSet.items import doubanAllMovie


class doubanAllMovies(Spider):
    name = "douBanAllMove"
    allowed_domains = ['movie.douban.com']
    page_start = 0
    category_index = 0
    category=["热门","最新","经典","可播放","豆瓣高分","冷门佳片","华语","欧美","韩国","日本","动作","喜剧","爱情","科幻","悬疑","恐怖","文艺"]
    url = "https://movie.douban.com/j/search_subjects?type=movie&tag={0}&sort=time&page_limit=20&page_start={1}"
    strart_urls = [url.format(quote(category[category_index]),str(page_start))]

    def parse(self,response):
        if self.category_index < len(self.category):
            movie_list = json.loads(response.text)['subjects']

            if len(movie_list) >= 1:
                for each in movie_list:
                    yield Request(each['url'],callback= self.nextParse)
                self.page_start += 20 # 加载更多里面的url是20一页
                yield Request(self.url.format(quote(self.category[self.category_index]),str(self.page_start)),callback=self.parse)
            
            #没有url则说明分类取完，换下一个分类
            else:
                self.page_start = 0
                self.category_index += 1
                yield Request(self.url.format(quote(self.category[self.category_index]), str(self.page_start)),callback=self.parse)

    def nextParse(self,response):
        item  = doubanAllMovie()
        movie_list = []
        movies = response.xpath("//div[@id='content']")
        for movie in movies:
            item['movie_name_cn'] = movie.xpath("//span[@property='v:itemreviewed']/text()").extract()[0]
            item['movie_name_en'] = movie.xpath("//span[@property='v:itemreviewed']/text()").extract()[1]
            item['movie_type'] = movie.xpath(".//span[@property='v:genre']/text()").extract()
            movie_year = movie.xpath(".//span[@class='year']/text()").extract()
            if movie_year > 0:
                item['movie_date'] = movie_year[0][1:-1]
            else:
                item['movie_date'] = 0 #0表示空,没有得到数据

            movie_director = movie.xpath('.//span/a[contains(@rel,"v:directedBy")]/text()').extract()
            if len(movie_director) > 0:
                item['movie_director'] =movie_director[0]
            else:
                item['movie_director'] = "暂无"
            movie_list.append(item)
            yield item
            
            return movie_list
