CREATE DATABASE car_inventory;
USE car_inventory;

CREATE TABLE cars(
	car_id int PRIMARY KEY,
    VIN varchar(50),
    manufacturer varchar(50),
    model varchar(50),
    year_ int,
    color varchar(50)
);

CREATE TABLE sale_person(
	id int,
    staff_id int PRIMARY KEY,
    name_ varchar(50),
    store varchar(50)
);


CREATE TABLE customers(
	id int,
    customer_id int PRIMARY KEY,
    name_ varchar(50),
    phone_number varchar(50),
    email varchar(100),
    address varchar(100),
    city varchar(50),
    state_province varchar(50),
    country varchar(50),
	zip_code bigint(20)
);

CREATE TABLE invoices(
	id int,
    invoice_number bigint(20),
    date_ varchar(20),
    customer_id int,
    staff_id int,
    car_id int,
    FOREIGN KEY (car_id) REFERENCES cars(car_id),
	FOREIGN KEY (staff_id) REFERENCES sale_person(staff_id),
	FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
    PRIMARY KEY (car_id, staff_id, customer_id)
    
);
