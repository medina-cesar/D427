-- Create database
-- Author: Cesar Medina
DROP DATABASE IF EXISTS aquarium_db;
CREATE DATABASE aquarium_db;
USE aquarium_db;

-- Create tables
-- tank table
CREATE TABLE IF NOT EXISTS tank (
	tank_id INT AUTO_INCREMENT PRIMARY KEY,
    size_gallons DECIMAL(4,1),
    tank_info VARCHAR(100),
    location VARCHAR(100)
);

-- lights table
CREATE TABLE IF NOT EXISTS lights (
	light_id INT AUTO_INCREMENT PRIMARY KEY,
    light_name VARCHAR(100),
    light_look VARCHAR(100),
    light_watts VARCHAR(100),
    light_size DECIMAL(4,2)
);

-- substrate table
CREATE TABLE IF NOT EXISTS substrate (
	sub_id INT AUTO_INCREMENT PRIMARY KEY,
    product_name VARCHAR(50),
    product_look VARCHAR(50),
    planted_functionality VARCHAR(5)
);

-- plants table
CREATE TABLE IF NOT EXISTS plants (
	plant_id INT AUTO_INCREMENT PRIMARY KEY,
    plant_name VARCHAR(50),
    plant_use ENUM('foreground', 'midground', 'background', 'floater') NOT NULL,
    plant_amm ENUM('low', 'medium', 'high') /** ammonia absorbtion level**/
);

-- livestock table
CREATE TABLE IF NOT EXISTS livestock (
	live_id INT AUTO_INCREMENT PRIMARY KEY,
    live_name VARCHAR(50),
    live_color VARCHAR(50),
    live_size DECIMAL(4,2),
    live_min DECIMAL(4,2), /** minimum tank size **/
    temperament ENUM('schooling', 'peaceful', 'semi-aggressive', 'aggressive') /**add optimal tank mates as a relation later**/
);

-- parameters table
CREATE TABLE IF NOT EXISTS parameters (
	param_id INT AUTO_INCREMENT PRIMARY KEY,
    parameter_name VARCHAR(50),
    ideal_range VARCHAR(50)
);

-- diet table
CREATE TABLE IF NOT EXISTS diet (
	diet_id INT AUTO_INCREMENT PRIMARY KEY,
    food_name VARCHAR(50),
    food_type VARCHAR(50),
    nutritional_value ENUM('low', 'medium', 'high')
);

-- sanity show
SHOW DATABASES;
USE aquarium_db;
SHOW TABLES;