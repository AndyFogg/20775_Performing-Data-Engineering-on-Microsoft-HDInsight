-- Lab09 -- Exercise01 -- Task02 -- Import HVAC data into Hive
-- Implementing Interactvie Queries for Big Data with Hive
-- Populate HVAC data into text formatted external tabel first
-- Populate HVAC data from previous step into ORC formatted table
-- HVAC data is having a header row, so you have to skip row, while loading 

-- Step1: Use default schema database to store the below tables
USE default;

-- Step2: DROP hvacdata, if already exists in the default schema
DROP TABLE IF EXISTS hvacdata;

-- Step3: Impose a structure on hvacSample Data using ExternalTable and verify
-- data load by counting the rows and previewing the rows.
CREATE EXTERNAL TABLE hvacdata (
 `Date` string, 
 `Time` string, 
 `TargetTemp` string, 
 `ActualTemp` string, 
 `System` string, 
 `SystemAge` string, 
 `BuildingID` string
)
ROW FORMAT DELIMITED FIELDS TERMINATED BY ', '
STORED AS TEXTFILE LOCATION 'wasbs:///HdiSamples/HdiSamples/SensorSampleData/hvac/'
tblproperties("skip.header.line.count"="1"); 

SELECT COUNT(*) FROM hvacdata;
SELECT * FROM hvacdata LIMIT 10;
