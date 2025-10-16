-- Example Queries
-- Run these to see my aquarium setup info
-- Author: Cesar Medina
USE aquarium_db;

-- sanity check 
SELECT DATABASE(); 
SHOW TABLES;
SELECT COUNT(*) AS tank_rows FROM tank;

-- Quick counts for each table
SELECT 'tank' AS tbl, COUNT(*) AS row_count FROM tank
UNION ALL SELECT 'lights', COUNT(*) FROM lights
UNION ALL SELECT 'substrate', COUNT(*) FROM substrate
UNION ALL SELECT 'plants', COUNT(*) FROM plants
UNION ALL SELECT 'livestock', COUNT(*) FROM livestock
UNION ALL SELECT 'parameters', COUNT(*) FROM parameters
UNION ALL SELECT 'diet', COUNT(*) FROM diet;

-- Tank inventory
SELECT tank_id, size_gallons, tank_info, location
FROM tank
ORDER BY tank_id;

-- Lights inventory
SELECT light_id, light_name, light_look, light_watts, light_size
FROM lights
ORDER BY light_id;

-- Substrate inventory
SELECT product_name, product_look, planted_functionality
FROM substrate
ORDER BY sub_id;

-- Plants inventory
SELECT plant_id, plant_name, plant_use, plant_amm 
FROM plants
ORDER BY plant_id;

-- Livestock inventory
SELECT live_id, live_name, live_color, live_size, live_min, temperament
FROM livestock
ORDER BY live_id;

-- Parameter Guide
SELECT parameter_name, ideal_range
FROM parameters
ORDER BY param_id;

-- Diet
SELECT food_name, food_type, nutritional_value
FROM diet
ORDER BY food_type;