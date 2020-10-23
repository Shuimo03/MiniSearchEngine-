## scrapy 介绍
Scrapy是一个应用程序框架，用于对网站进行爬行和提取结构化数据，这些结构化数据可用于各种有用的应用程序，如数据挖掘、信息处理或历史存档。

尽管Scrapy最初是为 web scraping 它还可以用于使用API提取数据（例如 Amazon Associates Web Services ）或者作为一个通用的网络爬虫。

### scrapy架构
+ Scrapy Engine
+ 调度器(Scheduler)
+ 下载器(Downloader)
+ Spiders
+ Item Pipeline
+ 下载器中间件(Downloader middlewares)
+ Spider中间件(Spider middlewares)
+ 数据流(Data flow)

### scrapy文件
+ scrapy.cfg: 项目的配置文件。
+ scrapyspider/: 该项目的python模块。之后您将在此加入代码。
+ scrapyspider/items.py: 项目中的item文件。
+ scrapyspider/pipelines.py: 项目中的pipelines文件。
+ scrapyspider/settings.py: 项目的设置文件。
+ scrapyspider/spiders/: 放置spider代码的目录。

## 数据库设计
### 表设计
+ douban_popular_movie: 豆瓣热门电影
+ douban_comedy_movie:  豆瓣搞笑电影
+ douban_top250_movie:  豆瓣top250电影
+ douban_classical_movie: 豆瓣经典电影
+ douban_unpopular_movie: 豆瓣冷门佳片电影
+ douban_mandarin_movie:  豆瓣华语电影
+ douban_EA_movie:  豆瓣欧美电影
+ douban_Korea_movie: 豆瓣韩国电影
+ douban_japan_movie: 豆瓣日本电影
+ douban_action_movie:  豆瓣动作电影
+ douban_love_movie:  豆瓣爱情电影
+ douban_scienceFiction_movie:  豆瓣科幻电影
+ douban_mystery_movie: 豆瓣悬疑电影
+ douban_horror_movie:  豆瓣恐怖电影
+ douban_art_movie: 豆瓣文艺电影

### 字段设计

豆瓣电影表

| 字段名称           | 字段值类型      | 字段值长度 | 字段值是否必填 | 备注         |
| ------------------ | --------------- | ---------- | -------------- | ------------ |
| ID                 | 正整数          |            | 必填           | 自增主键     |
| movie_name_cn      | 字符串          |            | 必填           | 电影中文名   |
| movie_name_en      | 字符串          |            | 必填           | 电影英文名   |
| movie_director     | 字符串          |            | 必填           | 导演名称     |
| movie_type         | 字符串          |            | 必填           | 电影类型     |
| movie_language     | 字符串          |            | 必填           | 电影语言     |
| movie_date         | 日期时间        |            | 必填           | 上映时间     |
| movie_actor        | 字符串          |            | 必填           | 电影演员     |
| movie_screenwriter | 字符串          |            | 必填           | 电影编剧     |
| movie_rating       | 浮点数(decimal) |            | 必填           | 电影评分     |
| movie_create_date  | 日期时间        |            | 必填           | 创建时间     |
| movie_update_date  | 日期时间        |            | 必填           | 最后修改时间 |

