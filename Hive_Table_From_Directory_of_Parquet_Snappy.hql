DROP TABLE IF EXISTS schema_name.table_name;

CREATE EXTERNAL TABLE schema_name.table_name (
`did` STRING,
`lat` DOUBLE,
`lon` DOUBLE,
`country` INT,
`dma` INT, 
`city` INT,
`count` BIGINT,
`dt` STRING
)

row format delimited

fields terminated by ','

STORED as PARQUET

LOCATION '/data/data_child/data_child_child/directory_with_data'

TBLPROPERTIES ("parquet.compress"="SNAPPY");






















