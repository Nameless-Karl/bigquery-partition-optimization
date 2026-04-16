-- Full scan
SELECT * FROM `thelook_gcda.taxi_trips`
ORDER BY pickup_datetime DESC
LIMIT 100;

-- Partition optimized
SELECT * FROM `thelook_gcda.taxi_trips`
WHERE pickup_datetime > '2022-11-01'
ORDER BY pickup_datetime ASC;

-- Full scan again (bad filter)
SELECT * FROM `thelook_gcda.taxi_trips`
WHERE pickup_datetime > '1900-01-01'
ORDER BY pickup_datetime ASC
LIMIT 100;
