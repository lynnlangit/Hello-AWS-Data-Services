-- Identify trucks that have been running on low fuel(less than 10 %) in the past 48 hours.
WITH low_fuel_trucks AS (
      SELECT time, truck_id, fleet, make, model, ("fuel-reading"/cast(fuel_capacity as double)*100) AS fuel_pct
   FROM "sampleDBMulti".IoTMulti
   WHERE time >= ago(48h)
     AND ("fuel-reading"/cast(fuel_capacity as double)*100) < 10
       ),
       other_trucks AS (
   SELECT time, truck_id, ("fuel-reading"/cast(fuel_capacity as double)*100) as remaining_fuel
   FROM "sampleDBMulti".IoTMulti
   WHERE time >= ago(48h)
     AND truck_id IN (SELECT truck_id FROM low_fuel_trucks)
     AND ("fuel-reading"/cast(fuel_capacity as double)*100) >= 10
       ),
       trucks_that_refuelled AS (
   SELECT a.truck_id
   FROM low_fuel_trucks a JOIN other_trucks b
   ON a.truck_id = b.truck_id AND b.time >= a.time
       )
  SELECT DISTINCT truck_id, fleet, make, model, fuel_pct
  FROM low_fuel_trucks
  WHERE truck_id NOT IN (
      SELECT truck_id FROM trucks_that_refuelled
  )