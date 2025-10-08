-- Create database
CREATE DATABASE IF NOT EXISTS aquarium_db;
USE aquarium_db;

-- Create tables
CREATE TABLE IF NOT EXISTS tank (
	tank_id INT AUTO_INCREMENT PRIMARY KEY,
    size_gallons DECIMAL(4,1),
    location VARCHAR(100)
);

CREATE TABLE IF NOT EXISTS substrate (
	sub_id INT AUTO_INCREMENT PRIMARY KEY,
    product_name VARCHAR(50),
    product_look VARCHAR(50),
    planted_functionality CHAR(2) /** add Y/N to confirm if it's good for planted setups or not **/
);

CREATE TABLE IF NOT EXISTS plants (
	plant_id INT AUTO_INCREMENT PRIMARY KEY,
    plant_name VARCHAR(50),
    plant_use VARCHAR(50), /** foreground, midground, or background, floater **/
    plant_amm VARCHAR(50) /** ammonia absorbtion level**/
);

CREATE TABLE IF NOT EXISTS livestock (
	live_id INT AUTO_INCREMENT PRIMARY KEY,
    live_name VARCHAR(50),
    live_color VARCHAR(50),
    live_size DECIMAL(4,2),
    live_min DECIMAL(4,2), /** minimum tank size **/
    live_mates VARCHAR(100) /** listing optimal tank mates **/
);

CREATE TABLE IF NOT EXISTS parameters (
	param_id INT AUTO_INCREMENT PRIMARY KEY,
    tank_id INT,
    pH DECIMAL(3,1),
    ammonia DECIMAL(3,2),
    nitrites DECIMAL(3,2),
    nitrates DECIMAL(3,2)
);

CREATE TABLE IF NOT EXISTS diet (
	diet_id INT AUTO_INCREMENT PRIMARY KEY,
    live_id INT,
    food_name VARCHAR(50)
);

-- show
SHOW DATABASES;
USE aquarium_db;
SHOW TABLES;