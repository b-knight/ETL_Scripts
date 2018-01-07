-- Enable dynamic partitioning in Hive:

SET hive.exec.dynamic.partition = true;

SET hive.exec.dynamic.partition.mode = nonstrict;

-- Create schema for partitioned table:

CREATE TABLE data_kpis.application_stats_by_day_pre_blacklisting_partitioned
(
app_id STRING,
app_name STRING,
udids INT,
mean_rows_per_udid DECIMAL,
row_count INT,
jgrs_1m_cells INT,
mean_jgrs_1m_cells_per_udid DECIMAL,
percent_obs_hour_00 DECIMAL,
percent_obs_hour_01 DECIMAL,
percent_obs_hour_02 DECIMAL,
percent_obs_hour_03 DECIMAL,
percent_obs_hour_04 DECIMAL,
percent_obs_hour_05 DECIMAL,
percent_obs_hour_06 DECIMAL,
percent_obs_hour_07 DECIMAL,
percent_obs_hour_08 DECIMAL,
percent_obs_hour_09 DECIMAL,
percent_obs_hour_10 DECIMAL,
percent_obs_hour_11 DECIMAL,
percent_obs_hour_12 DECIMAL,
percent_obs_hour_13 DECIMAL,
percent_obs_hour_14 DECIMAL,
percent_obs_hour_15 DECIMAL,
percent_obs_hour_16 DECIMAL,
percent_obs_hour_17 DECIMAL,
percent_obs_hour_18 DECIMAL,
percent_obs_hour_19 DECIMAL,
percent_obs_hour_20 DECIMAL,
percent_obs_hour_21 DECIMAL,
percent_obs_hour_22 DECIMAL,
percent_obs_hour_23 DECIMAL,
src STRING
)

PARTITIONED BY (dt STRING);

-- Insert into partitioned table :

FROM data_kpis.application_stats_by_day_pre_blacklisting

INSERT OVERWRITE TABLE data_kpis.application_stats_by_day_pre_blacklisting_partitioned PARTITION(dt)

SELECT *

DISTRIBUTE BY dt;