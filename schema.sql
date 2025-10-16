-- Create database
DROP DATABASE IF EXISTS aquarium_db;
CREATE DATABASE aquarium_db;
USE aquarium_db;

-- Create tables

-- tank
CREATE TABLE tank (
	tank_id INT AUTO_INCREMENT PRIMARY KEY,
    size_gallons DECIMAL(4,1),
    tank_info VARCHAR(100),
    location VARCHAR(100)
);

-- substrate
CREATE TABLE substrate (
	sub_id INT AUTO_INCREMENT PRIMARY KEY,
    product_name VARCHAR(50),
    product_look VARCHAR(50),
    planted_functionality BOOLEAN NOT NULL DEFAULT FALSE /** add Y/N to confirm if it's good for planted setups or not **/
);

-- plants
CREATE TABLE plants (
	plant_id INT AUTO_INCREMENT PRIMARY KEY,
    plant_name VARCHAR(50),
    plant_use ENUM('foreground', 'midground', 'background', 'floater') NOT NULL,
    plant_amm ENUM('low', 'medium', 'high') /** ammonia absorbtion level**/
);

-- livestock
CREATE TABLE livestock (
	live_id INT AUTO_INCREMENT PRIMARY KEY,
    live_name VARCHAR(50),
    live_color VARCHAR(50),
    live_size DECIMAL(4,2),
    live_min DECIMAL(4,2), /** minimum tank size **/
    temperament ENUM('schooling', 'peaceful', 'semi-aggressive', 'aggressive') /**add optimal tank mates as a relation later**/
);

-- parameters
CREATE TABLE parameters (
	param_id INT AUTO_INCREMENT PRIMARY KEY,
    tank_id INT,
    pH DECIMAL(3,1),
    ammonia DECIMAL(3,2),
    nitrites DECIMAL(3,2),
    nitrates DECIMAL(4,2)
);

CREATE TABLE diet (
	diet_id INT AUTO_INCREMENT PRIMARY KEY,
    live_id INT,
    food_name VARCHAR(50)
);

-- show
SHOW DATABASES;
USE aquarium_db;
SHOW TABLES;