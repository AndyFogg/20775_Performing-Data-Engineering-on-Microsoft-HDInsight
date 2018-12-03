-- This script is to verify the bulk ingests into HVAC and BUILDINGS
-- you may also run as this file as below
-- python /usr/hdp/<HDP_VERSION>/phoenix/bin/sqlline.py <ZOOKEEPER_NAME>:2181:/hbase-unsecure
-- <HDP_VERSION> - Horton Works Data Plarform Version go to to /usr/hdp directory and see the sub folder with numbers
-- Replace <ZOOKEEPER_NAME> with one of the 3 zookeeper server names from Ambari
-- e.g python /usr/hdp/2.6.0.2-76/phoenix/bin/sqlline.py zk0-hbaset.uwywavuhkdbupbwotvfu02zgdg.fx.internal.cloudapp.net:2181:/hbase-unsecure
-- !run verify_bulk_ingests.sql

-- Step 1: count the number of records in the table
SELECT COUNT(*) FROM HVAC;
SELECT COUNT(*) FROM BUILDINGS;

-- Step 2: Fetch 10 records from each of the table
SELECT * FROM HVAC LIMIT 10;
SELECT * FROM BUILDINGS LIMIT 10;



