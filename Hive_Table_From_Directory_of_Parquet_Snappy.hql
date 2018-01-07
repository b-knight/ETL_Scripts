DROP TABLE IF EXISTS data_kpis.adcolony_temp_test;

CREATE EXTERNAL TABLE data_kpis.adcolony_temp_test (
`did` STRING,
`timestamp` BIGINT,
`timestamp_local` BIGINT,
`jgrs_1m` BIGINT,
`app_id` STRING,
`app_name` STRING,
`device_carrier` STRING,
`device_connection_type` INT,
`device_ext_isp` STRING,
`device_ip` STRING,
`device_language` STRING,
`device_os` STRING,
`device_ua` STRING,
`ext_carriername` STRING,
`netid` STRING,
`app_cat` STRING, 
`site_id` STRING, 
`site_name` STRING, 
`site_cat` STRING, 
`country` INT,
`dma` INT, 
`city` INT,
`postcode` INT, 
`region` INT,
`neighborhood` INT,
`count` BIGINT,
`dt` STRING
)

row format delimited

fields terminated by ','

STORED as PARQUET

LOCATION '/data/datatrain/production/1m1m/ai7010/adcolony/version1.0/sdk/preblacklist/dt_log=2017-12-01/dt=2017-12-01'

TBLPROPERTIES ("parquet.compress"="SNAPPY");






















