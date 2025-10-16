-- seed file
-- Used to populate the info in my schema
-- Author: Cesar Medina
USE aquarium_db;

-- Tank data
INSERT INTO tank (size_gallons, tank_info, location)
VALUES
	(5.0, 'Fluval Spec V', 'Right side of desk'),
    (3.0, 'Rimless Nano Prism', 'Left side of desk');
    
-- Light data
INSERT INTO lights (light_name, light_look, light_watts, light_size)
VALUES
	('NICREW SkyLED Plus', 'thin', '18w', 24.0),
    ('ONF Flat Nano', 'minimalist', '15w', 9.0);
    
-- Substrate data
INSERT INTO substrate (product_name, product_look, planted_functionality)
VALUES
	('Seachem - Fluorite Black Sand', 'dark, silky', 'Y'),
    ('Aqueon - Aqua Soil', 'dark brown sphere balls', 'Y');
    
-- Plant data
INSERT INTO plants (plant_name, plant_use, plant_amm)
VALUES
	('Dwarf Hairgrass', 'foreground', 'low'),
    ('Christmas Moss', 'foreground', 'medium'),
    ('Flame Moss', 'foreground', 'medium'),
    ('Bacopa Carolina', 'midground', 'high'),
    ('Green Crypt', 'midground', 'medium'),
    ('Rotala Wallichi', 'background', 'medium'),
    ('Red Root Floater', 'floater', 'medium');
    
-- Livestock data
INSERT INTO livestock (live_name, live_color, live_size, live_min, temperament)
VALUES
	('Alien Betta', 'Blue', 2.5, 3.0, 'aggressive'),
    ('Butterfly Betta', 'Red & Blue', 2.5, 3.0, 'semi-aggressive'),
    ('Amano Shrimp', 'Transparent', 2.0, 5.0, 'peaceful'),
    ('Horned Nerite Snail', 'Yellow', 1.0, 2.0, 'peaceful');
    
-- Parameters
INSERT INTO parameters (parameter_name, ideal_range)
VALUES 
	('ammonia', '0ppm - 0.25ppm'),
    ('nitrite', '0ppm'),
    ('nitrate', '<25ppm'),
    ('pH', '6.5 - 7.5'),
    ('temperature', '75F - 80F');
    
-- Diet
INSERT INTO diet (food_name, food_type, nutritional_value)
VALUES
	('Generic fish flakes', 'Betta Fish', 'low'),
    ('Omega one fish pellets', 'Betta Fish', 'high'),
    ('Algae wafers', 'Shrimp & Snails', 'high'),
    ('Biofilm', 'All inhabitants', 'medium'),
    ('Algae', 'Shrimp & Snails', 'medium');