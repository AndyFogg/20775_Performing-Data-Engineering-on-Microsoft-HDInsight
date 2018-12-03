-- Lab09 -- Exercise02 -- Task04
-- Analyze and visualize data

-- Step1: Perform basic data profiling
-- Count the number of rows
-- Preview few rows from hvac_buildings table
-- Fetch the number of countries using the HVAC products
-- Count the number of countries using the HVAC products
select count(*) from hvac_buildings;
select * from hvac_buildings LIMIT 10;
select distinnct country from hvac_buildings;
select count(distinnct country) from hvac_buildings;

-- Step2: Determine the number of bulidings and number of HVAC Products in each country
-- Use Columns country, BuildingId and HVACProdcut to write the query
select country, 
       count(BuildingID) as no_of_buildings,
       count(HVACProduct) as no_of_hvacproducts
from hvac_buildings 
group by country
order by no_of_buildings desc;

-- Step3: Determine the temperature boundaries for various countries over a period of time (time series type view)
-- Use Columns `date`, country and tempboundary to write the query
select `date`,
       country, 
       tempboundary 
from hvac_buildings
order by `date`,
         country;

-- Step4: Determine the worse temperatures for various countries over a period of time (time series type view)
-- Use Columns `date`, country and worsetemp to write the query
select `date`,
       country, 
       worsetemp 
from hvac_buildings
where worsetemp='1'
order by `date`,
         country,  
         worsetemp;

-- Step5: Identify the HVAC products, which need to be upgraded
-- Use HVACproduct, worsetemp columns to write the query
select HVACproduct, 
       worsetemp 
from hvac_buildings
where worsetemp = '1'
order by worsetemp desc;
