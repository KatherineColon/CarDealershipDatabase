DROP DATABASE IF EXISTS dealership;

CREATE DATABASE IF NOT EXISTS dealership;

USE dealership;

# Tables #

CREATE TABLE `dealerships` (
	`dealership_id` INTEGER NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(50),
    `address` VARCHAR(50),
    `phone` VARCHAR(12),
 CONSTRAINT `pk_dealership` PRIMARY KEY (`dealership_id`)); 
 
 CREATE TABLE `vehicles` (
	`year` INTEGER,
	`make` VARCHAR(50),
    `model` VARCHAR(50),
    `price` DECIMAL(10,2),
    `VIN` VARCHAR(50),
    `sold` VARCHAR(5),
  CONSTRAINT `pk_vehicles` PRIMARY KEY (`VIN`));
  
CREATE TABLE `inventory` (
	`dealership_id` INTEGER NOT NULL AUTO_INCREMENT,
    `VIN` VARCHAR(50),
  CONSTRAINT `fk_dealership_inventory` FOREIGN KEY (`dealership_id`) 
  REFERENCES `dealerships`(`dealership_id`),
  CONSTRAINT `fk_vehicle_inventory` FOREIGN KEY (`VIN`) 
  REFERENCES `vehicles`(`VIN`));
  
CREATE TABLE `sales_contracts` (
	`id` INTEGER NOT NULL AUTO_INCREMENT,
	`VIN` VARCHAR(50),
    `customer name` VARCHAR (50),
    `date` DATETIME,
    `price` DECIMAL(10,2),
  CONSTRAINT `pk_sale_id` PRIMARY KEY (`id`),  
  CONSTRAINT `fk_vehicle_sale` FOREIGN KEY (`VIN`)
  REFERENCES `vehicles` (`VIN`));
  
# Values #

INSERT INTO dealerships (dealership_id, name, address, phone) 
VALUES (NULL, "Maher Chevrolet", "1023 Frontage Rd, Clearwater, FL 33759", "727 563 2987");
INSERT INTO dealerships (dealership_id, name, address, phone)
VALUES (NULL, "Sunny's Used Cars", "24876 US HWY 19, Palm Harbor, FL 33764", "727 276 7765");

INSERT INTO vehicles (year, make, model, price, VIN, sold)
VALUES (2006, "Toyota", "RAV4", 7000.00, "1HGCM82633A004352", "NO");
INSERT INTO vehicles (year, make, model, price, VIN, sold)
VALUES (2016, "Chevy", "Malibu", 15000.00, "1FAFP404X1F123456", "NO");
INSERT INTO vehicles (year, make, model, price, VIN, sold)
VALUES (2005, "Saturn", "Ion", 3000.00, "1J4GL48K74W123456", "YES");
INSERT INTO vehicles (year, make, model, price, VIN, sold)
VALUES (2024, "Chevy", "Silverado", 76000.00, "3VWFE21C04M000001", "NO");
INSERT INTO vehicles (year, make, model, price, VIN, sold)
VALUES (2006, "Mercury", "Cougar", 4500.00, "2FMDK4KC5BBA12345", "NO");

 INSERT INTO inventory (dealership_id, VIN)
 VALUES (1, "3VWFE21C04M000001");
 INSERT INTO inventory (dealership_id, VIN)
 VALUES (1, "1FAFP404X1F123456");
 INSERT INTO inventory (dealership_id, VIN)
 VALUES (2, "1HGCM82633A004352");
 INSERT INTO inventory (dealership_id, VIN)
 VALUES (2, "1J4GL48K74W123456");
 INSERT INTO inventory (dealership_id, VIN)
 VALUES (2, "2FMDK4KC5BBA12345");
 
 