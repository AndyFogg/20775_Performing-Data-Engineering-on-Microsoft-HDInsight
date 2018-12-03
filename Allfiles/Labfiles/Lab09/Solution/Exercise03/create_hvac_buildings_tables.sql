-- This script is to create HVAC and BUILDINGS table
-- python /usr/hdp/<HDP_VERSION>/phoenix/bin/sqlline.py <ZOOKEEPER_NAME>:2181:/hbase-unsecure
-- <HDP_VERSION> - Horton Works Data Plarform Version go to to /usr/hdp directory and see the sub folder with numbers
-- Replace <ZOOKEEPER_NAME> with one of the 3 zookeeper server names from Ambari
-- e.g python /usr/hdp/2.6.0.2-76/phoenix/bin/sqlline.py zk0-hbaset.uwywavuhkdbupbwotvfu02zgdg.fx.internal.cloudapp.net:2181:/hbase-unsecure
-- !run create_hvac_buildings_tables.sql

-- Step1: DROP HVAC table, if already exists
DROP TABLE IF EXISTS HVAC;

-- Step2: Impose a structure on HVAC Data using ExternalTable
CREATE TABLE HVAC 
(
   DATE VARCHAR(20), 
   TIME VARCHAR(10), 
   TARGETTEMP INTEGER, 
   ACTUALTEMP INTEGER, 
   SYSTEM VARCHAR(20), 
   SYSTEMAGE INTEGER, 
   BUILDINGID INTEGER not null
CONSTRAINT HEAT_PK PRIMARY KEY(DATE,TIME,SYSTEM,BUILDINGID)
);

-- Step3: Drop buildings table, if already exists
DROP TABLE IF EXISTS buildings;

-- Step4 : Impose a structure on buildings data using ExternalTable
CREATE TABLE BUILDINGS (
   BUILDINGID INTEGER,
   BUILDINGMGR VARCHAR(10),
   BUILDINGAGE INTEGER,
   HVACPRODUCT VARCHAR(20),
   COUNTRY VARCHAR(30)
   CONSTRAINT BUILD_PK PRIMARY KEY(BUILDINGID)
);
