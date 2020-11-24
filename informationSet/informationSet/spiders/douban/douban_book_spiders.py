# //div//ul[@class = 'subject-list']/li/div/h2/a 书名
# //div//ul[@class = 'subject-list']/li/div/div/span[@class = "rating_nums"] 评分
# //div//ul[@class = 'subject-list']/li/div/div[@class="pub"] 书籍信息
# //div//ul[@class = 'subject-list']/li/div/p 书评

from scrapy import Request
from scrapy import Spider
from informationSet.items import doubanBookItem

class doubanBook(Spider):
    name = 'douBanBook'

    def start_requests(self):
        url = "https://book.douban.com/tag/"
        urlist = ['小说','外国文学','文学','经典','中国文学',
            '随笔','日本文学','散文','村上春树','诗歌','童话',
            '名著','儿童文学','古典文学','余华','王小波','杂文',
            '当代文学','张爱玲','外国名著','米兰·昆德拉','杜拉斯',
            '港台','漫画','推理','绘本','东野圭吾','青春','悬疑',
            '科幻','言情','推理小说','奇幻','武侠','日本漫画',
            '耽美','网络小说','韩寒','科幻小说','三毛','亦舒',
            '阿加莎·克里斯蒂','金庸','安妮宝贝','穿越','郭敬明',
            '轻小说','魔幻','青春文学','几米','J.K.罗琳','幾米',
            '张小娴','校园','古龙','高木直子','沧月','余秋雨','落落',
            '历史','心理学','哲学','社会学','传记','文化','艺术','社会',
            '政治','设计','政治学','宗教','建筑','电影','数学','中国历史',
            '回忆录','思想','国学','人物传记','艺术史','人文','音乐','绘画',
            '戏剧','西方哲学' ,'近代史'	,'二战','军事','佛教','考古','自由主义',
            '美术','爱情','成长','生活','旅行', '心理','女性','励志','摄影',
            '灵修',	'健康',	'情感',	'人际关系','两性','养生','手工','家居',
            '自助游','教育','职场' ,'美食','游记','经济学','管理','经济','商业',
            '金融','投资','营销','理财','创业','股票','广告','企业史','策划',
            '科普','互联网','科学','编程','交互设计','算法','用户体验',	'科技',
            'web','交互','通信','UE','神经网络','UCD','程序'
            ]
        for bookURL in urlist:
            yield Request(url+bookURL)
        
    def parse(self,response):
        item = doubanBookItem()
        bookes = response.xpath('//div//ul[@class = "subject-list"]')
        #bookes = response.xpath('//*[@id="subject_list"]/ul//li')
        for book in bookes:
            item['book_name'] = book.xpath('.//li/div/h2/a/text()').extract()[2].replace("\n", "").replace(" ", "")
            item['book_information'] = book.xpath('.//div[@class="pub"]').extract()[0].replace("\n", "").replace(" ", "")
            item['book_rating_nums'] = book.xpath('.//span[@class = "rating_nums"]/text()').extract()[0]
            item['book_review'] = book.xpath('.//li/div/p/text()').extract()[0]
            yield item
    
        next_url = response.xpath('//span[@class="next"]/a/@href').extract()
        if next_url:
            next_url = 'https://music.douban.com/' + next_url[0]
            yield Request(next_url)