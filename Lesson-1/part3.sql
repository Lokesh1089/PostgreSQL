SET search_path TO person;

create table cars (
	id BIGSERIAL NOT NULL PRIMARY KEY,
	make  VARCHAR(50) NOT NULL,
	model VARCHAR(50) NOT NULL,
	price float NOT NULL
);

-- Mock Data FROM mockaroo Website

insert into cars (id, make , model, price) values (1, 'Suzuki', 'Swift', '555.96');
insert into cars (id, make , model, price) values (2, 'Pontiac', 'Firebird', '820.36');
insert into cars (id, make , model, price) values (3, 'Porsche', 'Carrera GT', '237.78');
insert into cars (id, make , model, price) values (4, 'Acura', 'CL', '743.47');
insert into cars (id, make , model, price) values (5, 'Saab', '9000', '842.50');
insert into cars (id, make , model, price) values (6, 'GMC', 'Safari', '484.77');
insert into cars (id, make , model, price) values (7, 'Mercedes-Benz', 'CL-Class', '991.43');
insert into cars (id, make , model, price) values (8, 'Cadillac', 'XLR', '739.78');
insert into cars (id, make , model, price) values (9, 'Chevrolet', 'Express 3500', '126.60');
insert into cars (id, make , model, price) values (10, 'Hyundai', 'Accent', '122.42');
insert into cars (id, make , model, price) values (11, 'Mazda', 'B-Series Plus', '864.14');
insert into cars (id, make , model, price) values (12, 'Kia', 'Sorento', '463.57');
insert into cars (id, make , model, price) values (13, 'Suzuki', 'Aerio', '796.01');
insert into cars (id, make , model, price) values (14, 'Volkswagen', 'Golf', '562.87');
insert into cars (id, make , model, price) values (15, 'Chevrolet', 'Corvair 500', '851.58');
insert into cars (id, make , model, price) values (16, 'Suzuki', 'Cultus', '274.90');
insert into cars (id, make , model, price) values (17, 'Kia', 'Rondo', '512.07');
insert into cars (id, make , model, price) values (18, 'Volvo', '960', '838.07');
insert into cars (id, make , model, price) values (19, 'Ford', 'Explorer', '814.07');
insert into cars (id, make , model, price) values (20, 'Chevrolet', 'Tracker', '778.59');
insert into cars (id, make , model, price) values (21, 'Chevrolet', 'Express 3500', '839.55');
insert into cars (id, make , model, price) values (22, 'Lincoln', 'MKS', '866.82');
insert into cars (id, make , model, price) values (23, 'Subaru', 'Legacy', '172.51');
insert into cars (id, make , model, price) values (24, 'Volkswagen', 'Golf', '899.74');
insert into cars (id, make , model, price) values (25, 'BMW', '3 Series', '329.65');
insert into cars (id, make , model, price) values (26, 'Jeep', 'Compass', '845.49');
insert into cars (id, make , model, price) values (27, 'Chevrolet', 'Aveo', '616.26');
insert into cars (id, make , model, price) values (28, 'Pontiac', 'Bonneville', '637.56');
insert into cars (id, make , model, price) values (29, 'Aptera', 'Typ-1', '491.44');
insert into cars (id, make , model, price) values (30, 'Chevrolet', '3500', '571.51');
insert into cars (id, make , model, price) values (31, 'Volkswagen', 'GTI', '133.19');
insert into cars (id, make , model, price) values (32, 'GMC', 'Savana 1500', '919.36');
insert into cars (id, make , model, price) values (33, 'Lincoln', 'Town Car', '846.27');
insert into cars (id, make , model, price) values (34, 'Lincoln', 'Navigator', '986.10');
insert into cars (id, make , model, price) values (35, 'Subaru', 'Outback', '274.88');
insert into cars (id, make , model, price) values (36, 'Suzuki', 'SJ', '874.59');
insert into cars (id, make , model, price) values (37, 'Ford', 'Mustang', '783.29');
insert into cars (id, make , model, price) values (38, 'Toyota', 'Sequoia', '224.64');
insert into cars (id, make , model, price) values (39, 'Volkswagen', 'Routan', '411.39');
insert into cars (id, make , model, price) values (40, 'Toyota', 'Matrix', '876.27');
insert into cars (id, make , model, price) values (41, 'Dodge', 'Dakota Club', '786.62');
insert into cars (id, make , model, price) values (42, 'Toyota', 'Corolla', '768.54');
insert into cars (id, make , model, price) values (43, 'Pontiac', 'Grand Am', '386.75');
insert into cars (id, make , model, price) values (44, 'Dodge', 'Caliber', '376.16');
insert into cars (id, make , model, price) values (45, 'Chevrolet', 'Corvette', '598.41');
insert into cars (id, make , model, price) values (46, 'Chevrolet', 'Silverado 2500', '301.25');
insert into cars (id, make , model, price) values (47, 'Ford', 'Five Hundred', '380.98');
insert into cars (id, make , model, price) values (48, 'GMC', 'Terrain', '787.98');
insert into cars (id, make , model, price) values (49, 'Toyota', 'Sequoia', '167.79');
insert into cars (id, make , model, price) values (50, 'Pontiac', 'Grand Am', '840.65');
insert into cars (id, make , model, price) values (51, 'Ford', 'Thunderbird', '196.63');
insert into cars (id, make , model, price) values (52, 'Mercury', 'Grand Marquis', '377.74');
insert into cars (id, make , model, price) values (53, 'Mitsubishi', 'Cordia', '920.97');
insert into cars (id, make , model, price) values (54, 'Volkswagen', 'GTI', '890.60');
insert into cars (id, make , model, price) values (55, 'Nissan', 'Altima', '166.99');
insert into cars (id, make , model, price) values (56, 'Lincoln', 'MKX', '963.00');
insert into cars (id, make , model, price) values (57, 'Buick', 'LeSabre', '227.15');
insert into cars (id, make , model, price) values (58, 'Cadillac', 'Fleetwood', '623.10');
insert into cars (id, make , model, price) values (59, 'Cadillac', 'SRX', '356.80');
insert into cars (id, make , model, price) values (60, 'Volvo', 'XC60', '390.90');
insert into cars (id, make , model, price) values (61, 'Nissan', 'Quest', '141.95');
insert into cars (id, make , model, price) values (62, 'Nissan', '370Z', '147.34');
insert into cars (id, make , model, price) values (63, 'Subaru', 'SVX', '101.06');
insert into cars (id, make , model, price) values (64, 'Lexus', 'ES', '985.69');
insert into cars (id, make , model, price) values (65, 'Nissan', 'Frontier', '969.85');
insert into cars (id, make , model, price) values (66, 'Chevrolet', 'Silverado 2500', '249.64');
insert into cars (id, make , model, price) values (67, 'Hyundai', 'Scoupe', '478.58');
insert into cars (id, make , model, price) values (68, 'Infiniti', 'G35', '546.83');
insert into cars (id, make , model, price) values (69, 'Audi', 'S4', '939.74');
insert into cars (id, make , model, price) values (70, 'Suzuki', 'Equator', '986.13');
insert into cars (id, make , model, price) values (71, 'GMC', 'Vandura 1500', '645.37');
insert into cars (id, make , model, price) values (72, 'Chrysler', '300', '931.75');
insert into cars (id, make , model, price) values (73, 'Jeep', 'Liberty', '916.91');
insert into cars (id, make , model, price) values (74, 'Land Rover', 'Defender', '197.22');
insert into cars (id, make , model, price) values (75, 'Mercedes-Benz', '300SL', '408.88');
insert into cars (id, make , model, price) values (76, 'Toyota', 'Tacoma Xtra', '382.95');
insert into cars (id, make , model, price) values (77, 'Toyota', 'Supra', '810.52');
insert into cars (id, make , model, price) values (78, 'Lexus', 'RX Hybrid', '850.44');
insert into cars (id, make , model, price) values (79, 'BMW', 'X5', '651.91');
insert into cars (id, make , model, price) values (80, 'Hummer', 'H3', '335.75');
insert into cars (id, make , model, price) values (81, 'Volkswagen', 'Eurovan', '659.24');
insert into cars (id, make , model, price) values (82, 'Ford', 'F350', '825.09');
insert into cars (id, make , model, price) values (83, 'Mercury', 'Capri', '331.36');
insert into cars (id, make , model, price) values (84, 'Smart', 'Fortwo', '768.03');
insert into cars (id, make , model, price) values (85, 'Oldsmobile', 'Regency', '896.58');
insert into cars (id, make , model, price) values (86, 'Volkswagen', 'Cabriolet', '804.58');
insert into cars (id, make , model, price) values (87, 'Chrysler', 'New Yorker', '916.34');
insert into cars (id, make , model, price) values (88, 'Pontiac', 'Grand Prix', '415.63');
insert into cars (id, make , model, price) values (89, 'Volkswagen', 'Touareg', '313.10');
insert into cars (id, make , model, price) values (90, 'Infiniti', 'Q', '314.24');
insert into cars (id, make , model, price) values (91, 'Toyota', 'Tacoma Xtra', '907.60');
insert into cars (id, make , model, price) values (92, 'Mitsubishi', 'Starion', '959.31');
insert into cars (id, make , model, price) values (93, 'Smart', 'Fortwo', '535.54');
insert into cars (id, make , model, price) values (94, 'GMC', 'Sierra 3500', '258.58');
insert into cars (id, make , model, price) values (95, 'Mercury', 'Sable', '111.84');
insert into cars (id, make , model, price) values (96, 'Mercury', 'Tracer', '808.75');
insert into cars (id, make , model, price) values (97, 'Mazda', 'Protege5', '798.05');
insert into cars (id, make , model, price) values (98, 'Hyundai', 'Sonata', '325.97');
insert into cars (id, make , model, price) values (99, 'Ford', 'Escort', '832.99');
insert into cars (id, make , model, price) values (100, 'Maybach', '57', '629.09');

SELECT * FROM cars;

SELECT MIN(price)
FROM cars;

SELECT MAX(price) FROM cars;

SELECT AVG (price) FROM cars;

SELECT ROUND(AVG(price)) FROM cars;

SELECT ROUND(MIN(price)) FROM cars;

SELECT ROUND(MAX(price)) FROM cars;

SELECT make, model , MAX(price) 
FROM cars
GROUP BY make, model;

SELECT make, model , MIN(price) 
FROM cars
GROUP BY make, model;

SELECT make, model, AVG(price)
FROM cars 
GROUP BY make, model;

SELECT make , MAX(price) 
FROM cars 
GROUP BY make
ORDER BY MAX(price) DESC;

SELECT make, MIN(price) 
FROM cars
GROUP BY make
ORDER BY MIN(price);

SELECT make, AVG(price) 
FROM cars
GROUP BY make
ORDER BY AVG(price) DESC;

SELECT SUM(price) FROM cars;

SELECT make , SUM(price) 
FROM cars 
GROUP BY make;

SELECT make , SUM(price)
FROM cars 
GROUP BY make 
ORDER BY SUM(price) DESC;

SELECT 10+5;
SELECT 98+19;

SELECT 5-2 ;
SELECT 30-12;

SELECT 5*4;
SELECT 7*8;

SELECT 55/5;
SELECT 24/6;

SELECT 36%5;
SELECT 12%8;

SELECT make , model ,price , price*0.10 FROM cars;

SELECT make, model, price, ROUND(price* .10) FROM cars;

SELECT make,model,ROUND(price), ROUND(price*0.10),ROUND(price-(price*0.10)) FROM cars ;

SELECT make, model,ROUND(price) AS Original_Price , ROUND(price*0.10) AS Discount_Amount FROM cars;

SELECT make,model,price,price*0.05 AS FivePercentDiscount FROM cars; 

SELECT make,model,ROUND(price) AS MRP, 
ROUND(price*0.05) AS five_percent_discount,
ROUND(price-ROUND(price*0.05)) AS Final_Price
FROM cars;

SELECT COALESCE(1);

SELECT COALESCE(1,2);

SELECT COALESCE(NULL, 2);

SELECT COALESCE(NULL, NULL, 15);

SELECT COALESCE(NULL, 22 , NULL, 11);

SELECT COALESCE(NULL,NULL,NULL,33);

SELECT * FROM persons;

SELECT first_name,email FROM persons;

SELECT COALESCE(email) FROM persons;

SELECT first_name, COALESCE(email,'Email Not Provided') FROM persons;

SELECT first_name, COALESCE(email,'xxxxxxxxxxxxxxx') FROM persons;

SELECT 33/0;

SELECT NULLIF(5,5);

SELECT NULLIF(5,7);

SELECT NULLIF(0,11);

SELECT NULLIF(7,0);

SELECT NULLIF(15,15);

SELECT 15/NULL;

SELECT 25/NULLIF(2,5);

SELECT 25/NULLIF(5,2);

SELECT 25/NULLIF(0,0);

SELECT COALESCE(25/NULLIF(0,0), 0);

SELECT NOW();

SELECT NOW()::DATE;

SELECT NOW()::TIME;

SELECT NOW() - INTERVAL '10 YEARS';

SELECT NOW() - INTERVAL '5 DAYS';

SELECT NOW() - INTERVAL '6 MONTHS';

SELECT NOW() - INTERVAL '2 HOURS';

SELECT NOW() + INTERVAL '8 YEARS';

SELECT NOW() + INTERVAL '21 MONTHS';

SELECT NOW() + INTERVAL '15 DAYS';

SELECT NOW() + INTERVAL '4 HOURS';

SELECT (NOW() + INTERVAL '21 MONTHS')::DATE;

SELECT (NOW() - INTERVAL '15 YEARS')::DATE;
 
SELECT EXTRACT(YEAR FROM NOW());

SELECT EXTRACT(MONTH FROM NOW());

SELECT EXTRACT(DAY FROM NOW());

SELECT EXTRACT(DOW FROM NOW());

SELECT EXTRACT(CENTURY FROM NOW());

SELECT EXTRACT(MINUTE FROM NOW());

SELECT first_name , last_name, country_of_birth, date_of_birth FROM persons;

SELECT first_name , last_name, country_of_birth, date_of_birth, AGE(NOW(),date_of_birth) FROM persons;

SELECT first_name , last_name, country_of_birth, date_of_birth,
EXTRACT(YEAR FROM AGE(NOW(),date_of_birth)) 
FROM persons;

SELECT first_name , last_name, country_of_birth, date_of_birth,
EXTRACT(YEAR FROM AGE(NOW(),date_of_birth)) AS YEARS_OLD, 
EXTRACT(MONTH FROM AGE(NOW(),date_of_birth)) AS MONTH_OLD
FROM persons;






















































