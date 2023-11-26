USE car_inventory;
SET sql_safe_updates = 0;

DELETE FROM cars
WHERE VIN = 'DAM41UDN3CHU2WVF6'
LIMIT 1;

SET sql_safe_updates = 1;
