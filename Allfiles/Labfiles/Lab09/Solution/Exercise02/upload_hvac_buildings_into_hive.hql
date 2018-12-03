-- Lab Exercise 2 -- Upload HVAC and Buildings files into Hive Tables
-- Implementing Interactvie Queries for Big Data with Hive
-- Populate HVAC data into text formatted external table first
-- Datassets to load
-- HVAC.csv - /HdiSamples/HdiSamples/SensorSampleData/hvac/HVAC.csv
-- buildings.csv - /HdiSamples/HdiSamples/SensorSampleData/building/buildings.csv
-- both files are having header row, so you have to skip this row while loading

-- Step1: Use default database to store the below tables
USE default;

-- Setp2: DROP hvacdata if already exists on the default database
DROP TABLE IF EXISTS hvacdata;

-- Step3: Impose a structure on hvacdata using Creare ExternalTable HiveQL Statement
CREATE EXTERNAL TABLE hvacdata (
 `Date` string, 
 `Time` string, 
 `TargetTemp` integer, 
 `ActualTemp` integer, 
 `System` string, 
 `SystemAge` integer, 
 `BuildingID` integer
)
ROW FORMAT DELIMITED FIELDS TERMINATED BY ', '
STORED AS TEXTFILE LOCATION 'wasbs:///HdiSamples/HdiSamples/SensorSampleData/hvac/'
tblproperties("skip.header.line.count"="1"); 

-- Step 4: Drop buildings table, if already exists
DROP TABLE IF EXISTS buildings;

-- Step 5: Impose a structure on buildings data using ExternalTable
CREATE EXTERNAL TABLE buildings (
   BuildingID integer,
   BuildingMgr string,
   BuildingAge integer,
   HVACproduct string,
   Country string
)
ROW FORMAT DELIMITED FIELDS TERMINATED BY ', '
STORED AS TEXTFILE LOCATION 'wasbs:///HdiSamples/HdiSamples/SensorSampleData/building/'
tblproperties("skip.header.line.count"="1");
