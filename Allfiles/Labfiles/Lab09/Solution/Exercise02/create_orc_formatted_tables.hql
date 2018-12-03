-- Lab09 -- Exercise02 -- Task02
-- Create ORC tables for hvacdata and buildings raw data in the default schema

-- Step1: Use default database to store the below tables


-- Step2: DROP hvacdataorc table, if already exists in the default schema


-- Step3: Create hvacdataorc table with same structures as hvacdata table
CREATE TABLE hvacdataorc (
  `Date` string, 
  `Time` string, 
  TargetTemp integer, 
  ActualTemp integer, 
  System string, 
  SystemAge integer, 
  BuildingID integer
)
STORED AS ORC;

-- Step4: Populate hvacdataORC from hvacdata table using INSERT OVERWRITE statement
INSERT OVERWRITE TABLE hvacdataorc
SELECT  `Date`, 
        `Time`, 
        TargetTemp, 
        ActualTemp, 
        System, 
        SystemAge, 
        BuildingID 
FROM hvacdata;

-- Step5: DROP buildingsorc table, if already exists in the default schema
DROP TABLE IF EXISTS buildingsorc;

-- Step6: Create buildingsorc table with same structures as buildings table
CREATE TABLE buildingsorc (
   BuildingID integer,
   BuildingMgr string,
   BuildingAge integer,
   HVACproduct string,
   Country string
)
STORED AS ORC;

-- Step7: Populate buildingsorc from buildings table using INSERT OVERWRITE statement
INSERT OVERWRITE TABLE buildingsorc
SELECT BuildingID,
       BuildingMgr,
       BuildingAge,
       HVACproduct,
       Country
FROM buildings;