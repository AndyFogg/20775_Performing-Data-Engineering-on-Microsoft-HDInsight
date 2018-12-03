-- Exercise03 -- Task03 - Perform interactive queries
-- you may also run as this file as below
-- python /usr/hdp/<HDP_VERSION>/phoenix/bin/sqlline.py <ZOOKEEPER_NAME>:2181:/hbase-unsecure
-- <HDP_VERSION> - Horton Works Data Plarform Version go to to /usr/hdp directory and see the sub folder with numbers
-- Replace <ZOOKEEPER_NAME> with one of the 3 zookeeper server names from Ambari
-- e.g python /usr/hdp/2.6.0.2-76/phoenix/bin/sqlline.py zk0-hbaset.uwywavuhkdbupbwotvfu02zgdg.fx.internal.cloudapp.net:2181:/hbase-unsecure
-- !run query_hvac_buildings.sql

-- Step1a: Fetch the number of countries using the HVAC products
-- Step1b: Count the number of countries using the HVAC products
SELECT DISTINCT COUNTRY FROM BUILDINGS;
SELECT COUNT(DISTINCT COUNTRY) FROM BUILDINGS;

-- Step2: Write a query to determine temperatures and other columns for building number 17 on 06/09/13
SELECT * 
FROM HVAC 
WHERE BUILDINGID=17 AND DATE='6/9/13';

-- Step3: Write a query to determine maximum and minimum target and actual temperatures
SELECT min(TARGETTEMP) AS MIN_TARGETTEMP, 
       max(TARGETTEMP) AS MAX_TARGETTEMP,
       min(ACTUALTEMP) AS MIN_ACTUALTEMP, 
       max(ACTUALTEMP) AS MAX_ACTUALTEMP
FROM HVAC;

-- Step4: Write a query to identify the countries where Actual temperature reached maximum of 80 on 6/11/13.
SELECT B.COUNTRY, A.DATE, MAX(A.ACTUALTEMP)
FROM HVAC A
INNER JOIN
BUILDINGS B
ON A.BUILDINGID = B.BUILDINGID
WHERE A.DATE = '6/11/13'
GROUP BY B.COUNTRY,
         A.DATE
HAVING MAX(A.ACTUALTEMP)=80;

-- Step5: Write a query to identify the countries where Actual temperature reached minimum of 55 on 6/11/13.
SELECT B.COUNTRY, A.DATE, MIN(A.ACTUALTEMP)
FROM HVAC A
INNER JOIN
BUILDINGS B
ON A.BUILDINGID = B.BUILDINGID
WHERE A.DATE = '6/11/13'
GROUP BY B.COUNTRY,
         A.DATE
HAVING MIN(A.ACTUALTEMP)=55;
