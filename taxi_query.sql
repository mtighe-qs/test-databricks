-- Query to pull data from Databricks taxi schema
-- Sample dataset: NYC Taxi Trips
-- Table DDL retrieved from Databricks CLI
-- Catalog: samples | Schema: nyctaxi | Table: trips
-- Table Type: MANAGED | Format: DELTA
-- 
-- Schema (all columns are nullable):
--   tpep_pickup_datetime  TIMESTAMP
--   tpep_dropoff_datetime TIMESTAMP  
--   trip_distance         DOUBLE
--   fare_amount           DOUBLE
--   pickup_zip            INT
--   dropoff_zip           INT

SELECT 
    tpep_pickup_datetime,
    tpep_dropoff_datetime,
    trip_distance,
    fare_amount,
    pickup_zip
    -- dropoff_zip
FROM 
    samples.nyctaxi.trips
WHERE 
    tpep_pickup_datetime >= '2016-01-01'
    AND tpep_pickup_datetime < '2016-03-01'
ORDER BY 
    tpep_pickup_datetime DESC
LIMIT 1000;
