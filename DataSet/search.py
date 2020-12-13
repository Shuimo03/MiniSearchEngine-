import sys
import math

import operator
import sys
import math # tf_idf , math.log
from stemming.porter2 import stem # stemmer



#索引数据结构
class Index:
    max_doc_id = 0
    doc  = {} #存放doc中的term
    doc_meta = {}
    index = {} #二级dict，是一个键对值，, key 是 term, value 是一组 id->"这个 term 在当前 doc 中出现了多少次?"的 dict.

'''
 1.清洗数据，使用停顿词
 2.提取词干，转小写
 3.对结果分词 
'''

def analyze(content):
  content = content.replace(", ", " ")
  content = content.replace(":", " ")
  content = content.replace("\t", " ")
  content = content.replace("\'", " ")
  content = content.replace("\"", " ")
  ss = content.split(" ")
  tokens = {}
  for s in ss :
    sts = stem(s.lower().strip())
    if len(sts) > 0 :
      tokens[sts] = tokens.get(sts, 0) + 1
  return tokens


#构造索引
def build_index(idx):
  print("Building Index .. ")
  f = open(r"D:\MiniSearch\MiniSearchEngine\DataSet\Information_Retrieval_Data\normal_data\2.txt",encoding="utf-8")
  for line in f:
    idx.doc[idx.max_doc_id] = line.strip()  # store doc
    tokens = analyze(line)
    term_sz = 0
    for k, v in tokens.items():
      idx_term = {}
      if k in idx.index :
        idx_term = idx.index[k]
      else :
        idx_term = {}
      idx_term[idx.max_doc_id] = v
      idx.index[k] = idx_term
      term_sz += v
    idx.doc_meta[idx.max_doc_id] = term_sz
    idx.max_doc_id = idx.max_doc_id + 1
  f.close()


  

if __name__ == "__main__":

    idx = Index()
    build_index(idx)