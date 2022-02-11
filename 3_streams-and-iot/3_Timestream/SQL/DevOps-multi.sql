-- Find the total number of measurements of CPU utilization for a specific EC2 host over the past 2 hours, filling in the missing values using linear interpolation.
WITH time_series_view AS (
      SELECT INTERPOLATE_LINEAR(
                     CREATE_TIME_SERIES(time, ROUND(cpu_utilization, 2)),
                     SEQUENCE(min(time), max(time), 10s)) AS ts_cpu_utilization
      FROM "sampleDBMulti".DevOpsMulti
      WHERE hostname = 'host-Hovjv'
        AND time > ago(2h)
   GROUP BY hostname
       )
  SELECT REDUCE(ts_cpu_utilization,
             DOUBLE '0.0',
                (s, x) -> s + 1,
                s -> s) AS count_cpu
  FROM time_series_view