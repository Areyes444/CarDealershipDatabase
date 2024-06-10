Drop database if exists car_dealership;

create database car_dealership;

use car_dealership;

-- creating tables

Create Table dealerships
(
dealership_id int not null auto_increment,
dealership_name varchar(50) not null,
dealership_address varchar(50) not null,
dealership_phone_number varchar(15) not null,
primary key(dealership_id)
);

create table inventory
(
dealership_id int not null,
vehicle_vin varchar(20) not null,
primary key(
dealership_id,
vehicle_vin
)
);

create table vehicles
(
vehicle_vin varchar(20) not null,
vehicle_year int not null,
vehicle_make varchar(20) not null,
vehicle_model varchar(20) not null,
vehicle_type varchar(20) not null,
vehicle_color varchar(20) not null,
vehicle_odometer int not null,
vehicle_price decimal(12,2),
vehicle_sold varchar(10) default 'not_sold',
primary key(
vehicle_vin
)
);

create table sales_contract
(
vehicle_vin varchar(20) not null,
contract_id int not null auto_increment,
date date,
customer_name varchar(20) not null,
customer_email varchar(30) not null,
processing_fee  decimal(10,2) default 0.00,
sales_tax decimal(10,2) default 0.00,
primary key(
contract_id
)
);

create table lease_contract
(
vehicle_vin varchar(20) not null,
lease_id int not null auto_increment,
date date,
customer_name varchar(20) not null,
customer_email varchar(30) not null,
processing_fee  decimal(10,2) default 0.00,
contract_tax decimal(10,2) default 0.00,
primary key(
lease_id
)
);

-- insert records

-- inserting info for dealerships
insert into dealerships( dealership_name, dealership_address, dealership_phone_number)
values('BestCars Dealership', '123 Main St, Cityville, CA', '555-1234')
,('Dream Auto Sales', '456 Elm St, Townsville, NY', '555-5678')
,('TopGear Motors', '789 Oak St, Villagetown, TX', '555-9012')
,('Speedy Auto World', '321 Pine St, Forestville, FL', '555-3456')
;

-- inserting info for invetory table 
insert into inventory(dealership_id, vehicle_vin)
values(1, '1GNSKCKC9GR230492')
,(1, '2C3CDXBG6JH226579')
,(1, '3FA6P0K97HR126421')
,(1, '4S3BMHB65A3215969')
,(1, '5YFBURHE2FP288330')
,(2, 'JH4NA1157MT000115')
,(2, 'JM3TCBDY3H0137318')
,(2, 'KNADM4A34E6815784')
,(2, 'KM8J33A42KU896431')
,(2, 'WDBFA67E2SF125115')
,(3, 'WDDNG7DBXCA444561')
,(3, 'WP1AA2A28HLA00327')
,(3, 'WUARL48H86K901234')
,(3, 'WVWML7AN3AE501967')
,(3, 'ZACCJABW6GPD47250')
,(4, '1HGCM82633A005374')
,(4, '2HGES16562H509076')
,(4, '3VWD67AJ8GM239562')
,(4, '5NPE24AF6FH159157')
,(4, 'JN1AZ0CP3BT002211')
;

-- inserting info to the vehicles table 
insert into vehicles(vehicle_vin, vehicle_year, vehicle_make, vehicle_model, vehicle_type, vehicle_color, vehicle_odometer, vehicle_price, vehicle_sold)
values
('1GNSKCKC9GR230492', 2016, 'Chevrolet', 'Suburban', 'SUV', 'Black', 50000, 35000.00, 'not_sold')
,('2C3CDXBG6JH226579', 2018, 'Dodge', 'Charger', 'Sedan', 'Red', 30000, 28000.00, 'sold')
,('3FA6P0K97HR126421', 2017, 'Ford', 'Fusion', 'Sedan', 'White', 40000, 20000.00, 'not_sold')
,('4S3BMHB65A3215969', 2019, 'Subaru', 'Outback', 'Wagon', 'Blue', 25000, 32000.00, 'not_sold')
,('5YFBURHE2FP288330', 2020, 'Toyota', 'Corolla', 'Sedan', 'Silver', 20000, 23000.00, 'sold')
,('JH4NA1157MT000115', 2016, 'Acura', 'NSX', 'Coupe', 'Black', 15000, 95000.00, 'not_sold')
,('JM3TCBDY3H0137318', 2017, 'Mazda', 'CX-5', 'SUV', 'Gray', 35000, 27000.00, 'sold')
,('KNADM4A34E6815784', 2014, 'Kia', 'Forte', 'Sedan', 'Silver', 60000, 12000.00, 'not_sold')
,('KM8J33A42KU896431', 2015, 'Hyundai', 'Santa Fe', 'SUV', 'White', 45000, 18000.00, 'not_sold')
,('WDBFA67E2SF125115', 2018, 'Mercedes-Benz', 'S-Class', 'Sedan', 'Black', 30000, 75000.00, 'sold')
,('WDDNG7DBXCA444561', 2016, 'Mercedes-Benz', 'S-Class', 'Sedan', 'Silver', 40000, 55000.00, 'not_sold')
,('WP1AA2A28HLA00327', 2017, 'Porsche', 'Macan', 'SUV', 'Blue', 25000, 42000.00, 'sold')
,('WUARL48H86K901234', 2006, 'Audi', 'A4', 'Sedan', 'Gray', 100000, 8000.00, 'not_sold')
,('WVWML7AN3AE501967', 2010, 'Volkswagen', 'Passat', 'Sedan', 'Black', 80000, 10000.00, 'not_sold')
,('ZACCJABW6GPD47250', 2016, 'Jeep', 'Cherokee', 'SUV', 'Red', 45000, 24000.00, 'sold')
,('1HGCM82633A005374', 2003, 'Honda', 'Accord', 'Sedan', 'Green', 120000, 5000.00, 'not_sold')
,('2HGES16562H509076', 2002, 'Honda', 'Civic', 'Sedan', 'Blue', 150000, 4000.00, 'sold')
,('3VWD67AJ8GM239562', 2016, 'Volkswagen', 'Jetta', 'Sedan', 'White', 50000, 15000.00, 'not_sold')
,('5NPE24AF6FH159157', 2015, 'Hyundai', 'Sonata', 'Sedan', 'Silver', 60000, 14000.00, 'not_sold')
,('JN1AZ0CP3BT002211', 2011, 'Nissan', '370Z', 'Coupe', 'Red', 70000, 20000.00, 'sold')
;

-- insert info for the sales_contract table 
insert into sales_contract(vehicle_vin, date, customer_name, customer_email, processing_fee, sales_tax)
values
('2C3CDXBG6JH226579', '2024-05-14', 'Jason Mamoa', 'jason@aol.com', 1500.00, 500.00)
,('JM3TCBDY3H0137318', '2024-06-08', 'Leonardo Dicaprio', 'leo.di@gmail.com', 2000.00, 250.00)
,('WP1AA2A28HLA00327', '2024-02-14', 'Emma Stone', 'emma.11@hotmail.com', 1250.00, 200.00)
,('2HGES16562H509076', '2024-05-05', 'Brad Pitt', 'brad.pitt@aol.com', 2000.00, 250.00)
;

-- insert info for the lease_contract table 
insert into lease_contract(vehicle_vin, date, customer_name, customer_email, processing_fee, contract_tax)
values
('5YFBURHE2FP288330', '2024-03-20', 'Tom Hanks', 'Tom.chocolates@aol.com', 1250.00, 500.00)
,('WDBFA67E2SF125115', '2024-04-15', 'Angelina Jolie', 'angelina.J@gmail.com', 1050.00, 100.00)
,('ZACCJABW6GPD47250', '2024-03-20', 'Tom Cruise', 'tomcruise@aol.com', 1000.00, 140.00)
,('JN1AZ0CP3BT002211', '2024-06-07', 'Denzel Washington', 'denzel@hotmail.com', 1500.00, 160.00)
;

-- creating foreign keys
-- connecting the inventory table with dealerships table 
alter table inventory 
add constraint fk_inventory_dealerships
foreign key(dealership_id) references dealerships(dealership_id);

-- connecting the inventory table with vehicles table
alter table inventory
add constraint fk_inventory_vehicles
foreign key(vehicle_vin) references vehicles(vehicle_vin);

-- connecting the sale_contract table with vehicles table
alter table sales_contract
add constraint fk_sales_contract_vehicles
foreign key(vehicle_vin) references vehicles(vehicle_vin);

-- connecting the lease_contract table with vehicles table
alter table lease_contract
add constraint fk_lease_contract_vehicles
foreign key(vehicle_vin) references vehicles(vehicle_vin);
