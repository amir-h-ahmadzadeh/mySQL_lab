USE car_inventory;
SET sql_safe_updates = 0;

 UPDATE sale_person
 SET store = 'Miami'
 WHERE name_ = 'Paige Turner';

UPDATE customers
SET email = 
	CASE
		WHEN name_ = 'Pablo Picasso' THEN 'ppicasso@gmail.com'
        WHEN name_  = 'Abraham Lincoln' THEN 'lincoln@us.gov'
        WHEN name_ = 'Napoléon Bonaparte' THEN 'hello@napoleon.me'
        ELSE 'NOT SPECIFIED'
	END;

SET sql_safe_updates = 1;