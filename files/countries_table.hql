create database if not exists hivedb;
use hivedb;
create external table if not exists countries (
  id int,
  code string,
  name string,
  continent string,
  wikipedia_link string,
  keywords string
)
row format delimited
fields terminated by ','
lines terminated by '\n'
stored as textfile location 'hdfs://namenode:8020/user/demo'
tblproperties("skip.header.line.count"="1");
