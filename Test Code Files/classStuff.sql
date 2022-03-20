-- Drop table if exists
DROP TABLE cities;

-- Create a new table
CREATE TABLE cities (
  id SERIAL PRIMARY KEY,
  city VARCHAR(30) NOT NULL,
  state VARCHAR(30) NOT NULL,
  population INT
);

-- Insert data into the table
INSERT INTO cities (city, state, population)
VALUES ('Alameda', 'California', 79177),
  ('Mesa', 'Arizona', 496401),
  ('Boerne', 'Texas', 16056),
  ('Boerne', 'Texas', 16056),
  ('Anaheim', 'Texas', 352497),
  ('Tucson', 'Arizona', 535677),
  ('Garland', 'Texas', 238002);
  
SELECT * FROM cities;

SELECT cities FROM cities;
SELECT city FROM cities;  
SELECT city, state FROM cities;  

SELECT city, state FROM cities
WHERE state='Texas';

-- Create a query to view cities and states
-- with a population less than 100,000
SELECT *
FROM cities
WHERE population < 100000;
  
  
-- Create a query to view the city in California
-- with a population of less than 100,000
SELECT *
FROM cities
WHERE population < 100000
AND state = 'California';


--  Create a query to update the state for the city of Anaheim.
UPDATE cities
SET state = 'California'
WHERE city = 'Anaheim';

SELECT * FROM cities

SELECT * FROM cities
WHERE id = 4;

-- Create a query to removed the duplicate "('Boerne', 'Texas', 16056)" by id=4.
DELETE FROM cities
WHERE id = 4;

SELECT * FROM cities

-- Drop table if exists
DROP TABLE people;

-- Create a new table
CREATE TABLE people (
  name VARCHAR(30) NOT NULL,
  has_pet BOOLEAN DEFAULT false,
  pet_type VARCHAR(10) NOT NULL,
  pet_name VARCHAR(30),
  pet_age INT
);

SELECT * FROM people;

-- Insert data into the table
INSERT INTO people (name, has_pet, pet_type, pet_name, pet_age)
VALUES ('Jacob', true, 'dog', 'Misty', 10),
  ('Ahmed', true, 'rock', 'Rockington', 100),
  ('Peter', true, 'cat', 'Franklin', 2),
  ('Dave', true, 'dog', 'Queso', 1);

-- Query only the `pet_name` field
SELECT pet_name FROM people;

-- Filter the query to show only dogs under the age of 5
SELECT pet_type, pet_name
FROM people
WHERE pet_type = 'dog'
AND pet_age < 5;


