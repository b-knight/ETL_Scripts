
DROP            TABLE IF EXISTS bknight.throttle_toyota_MAIDs_normalized_for_LCI; 

CREATE EXTERNAL TABLE           bknight.throttle_toyota_MAIDs_normalized_for_LCI 
(
`maid_post_lci_normalization` STRING
) 
ROW FORMAT DELIMITED FIELDS TERMINATED BY ','
STORED AS TEXTFILE
LOCATION '/user/bknight/Throttle_Toyota_MAIDs_Normalized_for_LCI';

