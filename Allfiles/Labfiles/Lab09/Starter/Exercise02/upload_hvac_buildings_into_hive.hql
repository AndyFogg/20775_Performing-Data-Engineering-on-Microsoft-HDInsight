-- Lab Exercise 2 -- Ingest raw data into Hive
-- Implementing Interactvie Queries for Big Data with Hive
-- Populate HVAC data into text formatted external table first
-- Datassets to load
-- HVAC.csv - /HdiSamples/HdiSamples/SensorSampleData/hvac/HVAC.csv
-- buildings.csv - /HdiSamples/HdiSamples/SensorSampleData/ building/building.csv
-- both files are having header row, so you have to skip this row while loading

-- Step1: Use default database to store the below tables


-- Setp2: DROP hvacdata if already exists on the default database


-- Step3: Impose a structure on hvacdata using Creare ExternalTable HiveQL Statement


-- Step4: Drop buildings table, if already exists


-- Step5: Impose a structure on buildings data using ExternalTable
