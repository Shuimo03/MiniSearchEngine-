from scrapy import Request
from scrapy import Spider
from informationSet.items import doubanMusicItem

class doubanMusic(Spider):
    name = 'douBanMusic'
    
    def start_requests(self):
        url = 'https://music.douban.com/tag/'
        urlList = ['OST','流行','民谣','pop','indie','Electronic',
                   'Folk','摇滚','J-POP','电影原声','rock','R&B',
                   'JPOP','post-rock','jazz','独立音乐','中国摇滚',
                   '纯音乐','电子','经典','古典','Brit-pop','britpop',
                   'Soundtrack','Alternative','Metal','独立','punk',
                   '原声','classical','钢琴','hip-hop','Post-Punk',
                   'Soul','newage','后摇']
        # urlList = ['OST']
        for musicURL in urlList:
            yield Request(url+musicURL)
    
    def parse(self,response):
        item = doubanMusicItem()
        musics = response.xpath('//div//div//table')

        for music in musics:
            item['music_cn'] = music.xpath('.//a/text()').extract()[2].replace("\n", "").replace(" ", "")
            item['music_singer'] = music.xpath('.//p/text()').extract()[0].replace("\n", "").replace(" ", "")
            item['music_rating_nums'] = music.xpath('.//span[@class = "rating_nums"]/text()').extract()[0]
            yield item
    
        next_url = response.xpath('//span[@class="next"]/a/@href').extract()
        if next_url:
            next_url = 'https://music.douban.com/' + next_url[0]
            yield Request(next_url)