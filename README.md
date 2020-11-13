### 搜索引擎
资料主要来源于 bilibili，豆瓣，imdb，rottentomatoes,电影天堂
### 网站分类
1. 音乐
2. 电影
3. 图书
### 前端技术栈
+ typescript
+ vue.js
+ bootstrap
  
### 后端技术栈
+ python 3.8.5
+ scrapy 2.4
+ 数据库 
  + redis
  + MySQL
+ Django 3.1.2
+ sqlalchemy (ORM框架)
+ Elasticsearch
+ docker

### 参考资料
+ 《Solr实战》

### 数据集
只靠爬虫的数据，应该是不够的，数据量太少，对数据分析以及搜索引擎没有什么太大的意义，所以打算爬虫改为
公开数据集，同时把单机爬虫改为分布式爬虫，再把数据量增大。

## 关于项目
搜索引擎项目分为三个子项目:
1. 前端项目:https://github.com/Shuimo03/MiniSearchFront
2. 爬虫项目:https://github.com/Shuimo03/MiniSearchEngine
3. 后端项目:https://github.com/Shuimo03/MiniSearchBackend