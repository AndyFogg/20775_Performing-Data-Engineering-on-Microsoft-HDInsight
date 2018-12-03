-- Lab09 -- Exercise02 -- Task03
-- Enrich data

-- Step1: Switch to default schema and DROP hvac_temperatures table if already exists in default schema
USE default;
DROP TABLE IF EXISTS hvac_temperatures;

-- Step2: CREATE hvac_temperatures table using Create Table AS Select * from (CTAS) HiveQL Statement
-- Create three columns: Temp_Variance, tempboundary, worsetemp with the following business rules
-- Temp_Variance - Difference between TargetTemp column and ActualTemp
-- tempboundary - If Difference between TargetTemp column and ActualTemp is :
    -- greater than 4 then set the value to 'HOT'
    -- less than -4 then set the value to 'COLD'
    -- Otherwsie Normal
-- worsetemp - If Difference between TargetTemp column and ActualTemp is :
    -- greater than 4 then set the value to '1'
    -- less than -4 then set the value to '1'
    -- Otherwsie '0'

CREATE TABLE hvac_temperatures
STORED AS ORC
AS
select a.*, 
       (a.TargetTemp - a.ActualTemp) as Temp_Variance,
       case 
           when (a.TargetTemp - a.ActualTemp) > '4' then 'COLD'
           when (a.TargetTemp - a.ActualTemp) < '-4' then 'HOT'
           else 'NORMAL'
       end as tempboundary,
       case 
           when (a.TargetTemp - a.ActualTemp) > '4' then '1'
           when (a.TargetTemp - a.ActualTemp) < '-4' then '1'
           else '0'
       end as worsetemp
from hvacdataorc a;

-- Step3: DROP hvac_buildings table if already exists and CREATE new hvac_buildings table by inner joining with hvac_temperatures tables
-- Using CTAS HiveQL Statement
DROP TABLE IF EXISTS hvac_buildings;
CREATE TABLE hvac_buildings
STORED AS ORC
AS
select h.*, 
       b.Country, 
       b.HVACproduct, 
       b.BuildingAge, 
       b.BuildingMgr
from buildings b 
join 
hvac_temperatures h 
on b.buildingid = h.buildingid;