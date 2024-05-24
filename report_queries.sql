-- Total data query
SELECT * FROM "report-data-ingestion-db"."district_bucket" limit 10;

-- Count query
SELECT count(*) FROM "report-data-ingestion-db"."district_bucket" limit 10;

-- show table query or describe table or how to check table DDL
SHOW CREATE TABLE `district_bucket`;


-- create table syntax
CREATE EXTERNAL TABLE `district_bucket`(
  `qualification` string,
  `east khasi hills` bigint,
  `west khasi hills` bigint,
  `south west khasi hills` bigint,
  `west garo hills` bigint,
  `east garo hills` bigint,
  `south garo hills` bigint,
  `south west garo hills` bigint,
  `north garo hills` bigint,
  `west jaintia hills` bigint,
  `east jaintia hills` bigint,
  `ri bhoi` bigint)
ROW FORMAT DELIMITED
  FIELDS TERMINATED BY ','
STORED AS INPUTFORMAT
  'org.apache.hadoop.mapred.TextInputFormat'
OUTPUTFORMAT
  'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'
LOCATION
  's3://mamathalearningpractice/district-bucket/'
TBLPROPERTIES (
  'CrawlerSchemaDeserializerVersion'='1.0',
  'CrawlerSchemaSerializerVersion'='1.0',
  'UPDATED_BY_CRAWLER'='district-data',
  'areColumnsQuoted'='false',
  'averageRecordSize'='89',
  'classification'='csv',
  'columnsOrdered'='true',
  'compressionType'='none',
  'delimiter'=',',
  'objectCount'='1',
  'recordCount'='221',
  'sizeKey'='19738',
  'skip.header.line.count'='1',
  'typeOfData'='file')