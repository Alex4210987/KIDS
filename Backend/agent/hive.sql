CREATE TABLE blacklist_subjects_table (id BIGINT, created_at TIMESTAMP, updated_at TIMESTAMP, deleted_at TIMESTAMP, exec STRING) COMMENT 'Table for blacklist subjects' ROW FORMAT DELIMITED FIELDS TERMINATED BY ',' STORED AS TEXTFILE;
CREATE TABLE blacklist_actions_table (id BIGINT, created_at TIMESTAMP, updated_at TIMESTAMP, deleted_at TIMESTAMP, target_name STRING, target_type STRING, timestamp_rec BIGINT, flag INT) COMMENT 'Table for blacklist actions' ROW FORMAT DELIMITED FIELDS TERMINATED BY ',' STORED AS TEXTFILE;
CREATE TABLE blacklist_files_table (id BIGINT, created_at TIMESTAMP, updated_at TIMESTAMP, deleted_at TIMESTAMP, path STRING) COMMENT 'Table for blacklist files' ROW FORMAT DELIMITED FIELDS TERMINATED BY ',' STORED AS TEXTFILE;
CREATE TABLE blacklist_netflows_table (id BIGINT, created_at TIMESTAMP, updated_at TIMESTAMP, deleted_at TIMESTAMP, src_addr STRING, src_port STRING, dst_addr STRING, dst_port STRING) COMMENT 'Table for blacklist netflows' ROW FORMAT DELIMITED FIELDS TERMINATED BY ',' STORED AS TEXTFILE;
CREATE TABLE node2id (id BIGINT, created_at TIMESTAMP, updated_at TIMESTAMP, deleted_at TIMESTAMP, hash_id STRING, node_type STRING, msg STRING, index_id BIGINT) COMMENT 'Table for node to ID mapping' ROW FORMAT DELIMITED FIELDS TERMINATED BY ',' STORED AS TEXTFILE;
CREATE TABLE event_table (id BIGINT, created_at TIMESTAMP, updated_at TIMESTAMP, deleted_at TIMESTAMP, src_node STRING, src_index_id STRING, operation STRING, dst_node STRING, dst_index_id STRING, timestamp_rec BIGINT) COMMENT 'Table for events' ROW FORMAT DELIMITED FIELDS TERMINATED BY ',' STORED AS TEXTFILE;
CREATE TABLE netflow_node_table (id BIGINT, created_at TIMESTAMP, updated_at TIMESTAMP, deleted_at TIMESTAMP, node_uuid STRING, hash_id STRING, src_addr STRING, src_port STRING, dst_addr STRING, dst_port STRING) COMMENT 'Table for netflow nodes' ROW FORMAT DELIMITED FIELDS TERMINATED BY ',' STORED AS TEXTFILE;
CREATE TABLE subject_node_table (id BIGINT, created_at TIMESTAMP, updated_at TIMESTAMP, deleted_at TIMESTAMP, node_uuid STRING, hash_id STRING, exec STRING) COMMENT 'Table for subject nodes' ROW FORMAT DELIMITED FIELDS TERMINATED BY ',' STORED AS TEXTFILE;
CREATE TABLE file_node_table (id BIGINT, created_at TIMESTAMP, updated_at TIMESTAMP, deleted_at TIMESTAMP, node_uuid STRING, hash_id STRING, path STRING) COMMENT 'Table for file nodes' ROW FORMAT DELIMITED FIELDS TERMINATED BY ',' STORED AS TEXTFILE;