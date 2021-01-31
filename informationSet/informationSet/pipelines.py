# Define your item pipelines here
#
# Don't forget to add your pipeline to the ITEM_PIPELINES setting
# See: https://docs.scrapy.org/en/latest/topics/item-pipeline.html


# useful for handling different item types with a single interface
from itemadapter import ItemAdapter
from sqlalchemy  import create_engine,Column,Integer,String,Table,DECIMAL,Integer,TEXT
from sqlalchemy.ext.declarative import declarative_base
from sqlalchemy.orm import sessionmaker

engine = create_engine('mysql+pymysql://root:WUliang1998102@127.0.0.1:3306/movie',encoding='utf-8')
Base = declarative_base()

Session = sessionmaker(bind=engine)
session = Session()

class top250_movie(Base):
        #表的名字
    __tablename__ = 'douban_top250_movie'
    id = Column(Integer,primary_key =True)
    movie_name_cn = Column(String(20)) #电影中文名
    movie_name_alias = Column(String(60)) #电影英文名/或者别名
    movie_director = Column(String(45)) #电影导演
    movie_type = Column(String(45)) #电影类型
    movie_country = Column(String(45)) #电影国家
    movie_date = Column(Integer) #上映时间
    movie_rating = Column(DECIMAL(10,0)) #电影评分

    Base.metadata.create_all(engine)

class douban_top250_pipelines(object):

    def process_item(self, item, spider):
        res = top250_movie(
            movie_name_cn =  item['movie_name_cn'],
            movie_name_en = item['movie_name_alias'],
            movie_director = item['movie_director'],
            movie_type =   item['movie_type'],
            movie_country =  item['movie_country'],
            movie_date =  item['movie_date'],
            movie_rating =  item['movie_rating']
                )
        try:
            session.add(res)
            session.commit()
        except:
            session.rollback()
            raise
        finally:
            session.close()
        return item

class doubanMusic(Base):
    __tablename__ = 'douban_music'
    id = Column(Integer,primary_key = True)
    music_cn = Column(String(100))
    music_singer = Column(String(100))
    music_rating_nums = Column(DECIMAL(10,2))

    Base.metadata.create_all(engine)

class douban_music__pipelines(object):
    def process_item(self,item,spider):
        res = doubanMusic(
            music_cn = item['music_cn'],
            music_singer =  item['music_singer'],
            music_rating_nums = item['music_rating_nums']
        )

        try:
            session.add(res)
            session.commit()
        except:
            session.rollback()
            raise
        finally:
            session.close()
        return item
    
class doubanBook(Base):
    __tablename__ = 'douban_book'
    id = Column(Integer,primary_key = True)
    book_name = Column(String(100))
    book_information  = Column(String(100))
    book_rating_nums = Column(DECIMAL(10,2))
    book_review =  Column(TEXT)

    Base.metadata.create_all(engine)

class douban_book__pipelines(object):
    def process_item(self,item,spider):
        res = doubanBook(
            book_name = item['book_name'],
            book_information =  item['book_information'],
            book_rating_nums = item['book_rating_nums'],
            book_review = item['book_review']
        )
    
        try:
            session.add(res)
            session.commit()
        except:
            session.rollback()
            raise
        finally:
            session.close()
        return item