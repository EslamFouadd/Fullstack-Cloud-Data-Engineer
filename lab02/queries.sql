/* Query the trips table for unique pickup location regions: */
select distinct(pickup_location_id) from trips;

/* Let's start by digging into the trip_distance column */
select
  max(trip_distance),
  min(trip_distance)
from
  trips;

/* How many trips in the dataset have a trip distance of 0? */
select count(*) from trips where trip_distance = 0;

/* Let's see if we can find more data that doesn't meet our expectations. We expect the fare_amount column to be positive. Enter the following query to see if this is true in the database: */
select count(*) from trips where fare_amount < 0;

/* Finally, let's investigate the payment_type column */
select
  payment_type,
  count(*)
from
  trips
group by
  payment_type;
