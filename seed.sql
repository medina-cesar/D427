-- seed file
USE aquarium_db;

-- Tank data
INSERT INTO tank (size_gallons, tank_info, location)
VALUES
	(5.0, 'Fluval Spec V', 'Right side of desk'),
    (3.0, 'Rimless ultra clear glass nano cube', 'Left side of desk');
    
-- Substrate data
INSERT INTO substrate (product_name, product_look, planted_functionality)
VALUES
	('Fluorite black sand', 'dark, silky', TRUE),
    ('Aqueon Aqua Soil', 'dark sphere balls', TRUE);
    
-- Plant data
INSERT INTO plants (plant_name, plant_use, plant_amm)
VALUES
	('Christmas Moss', 'foreground', 'medium'),
    ('Bacopa', 'midground', 'high'),
    ('Green Crypt', 'midground', 'medium'),
    ('Salvinia Minima', 'floater', 'high');
    
-- Livestock data
INSERT INTO livestock (live_name, live_color, live_size, live_min, temperament)
VALUES
	('Betta Splendens', 'Blue Alien', 2.5, 3.0, 'semi-aggressive'),
    ('Amano Shrimp', 'Transparent', 2.0, 5.0, 'peaceful'),
    ('Horned Nerite Snail', 'Yellow', 1.0, 2.0, 'peaceful');
    
-- Parameters
INSERT INTO parameters (tank_id, pH, ammonia, nitrites, nitrates)
VALUES 
	(1, 7.3, 0.10, 0.00, 10.0),
    (1, 7.2, 0.05, 0.00, 12.0),
    (2, 7.4, 0.00, 0.00, 8.0);
    
-- Diet
INSERT INTO diet (live_id, food_name)
VALUES
	(1, 'Generic fish flakes'),
    (1, 'Omega one fish pellets'),
    (2, 'Algae wafers'),
    (2, 'Biofilm'),
    (3, 'Algae');