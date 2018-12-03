-- This script is to create HVAC and BUILDINGS table
-- python /usr/hdp/<HDP_VERSION>/phoenix/bin/sqlline.py <ZOOKEEPER_NAME>:2181:/hbase-unsecure
-- <HDP_VERSION> - Horton Works Data Plarform Version go to to /usr/hdp directory and see the sub folder with numbers
-- Replace <ZOOKEEPER_NAME> with one of the 3 zookeeper server names from Ambari
-- e.g python /usr/hdp/2.6.0.2-76/phoenix/bin/sqlline.py zk0-hbaset.uwywavuhkdbupbwotvfu02zgdg.fx.internal.cloudapp.net:2181:/hbase-unsecure
-- !run create_hvac_buildings_tables.sql

-- Step1: DROP HVAC table, if already exists


-- Step2: Impose a structure on HVAC Data using ExternalTable


-- Step3: Drop buildings table, if already exists


-- Step4: Impose a structure on buildings data using ExternalTable
