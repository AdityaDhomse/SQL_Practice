CREATE DATABASE pet_shop;

USE pet_shop;

DROP TABLE cats;

-- C: CREATE

CREATE TABLE cats 
  ( 
     cat_id INT AUTO_INCREMENT, 
     name   VARCHAR(100), 
     breed  VARCHAR(100), 
     age    INT, 
     PRIMARY KEY (cat_id) 
  ); 
  
INSERT INTO cats(name, breed, age) 
VALUES ('Ringo', 'Tabby', 4),
       ('Cindy', 'Maine Coon', 10),
       ('Dumbledore', 'Maine Coon', 11),
       ('Egg', 'Persian', 4),
       ('Misty', 'Tabby', 13),
       ('George Michael', 'Ragdoll', 9),
       ('Jackson', 'Sphynx', 7);
      
-- R: READ      
SELECT * FROM cats;

SELECT age FROM cats;

SELECT * FROM cats WHERE age=4;

SELECT name FROM cats WHERE age=4;

-- READ exercise

SELECT cat_id FROM cats;

SELECT name, breed FROM cats;

SELECT name, age FROM cats WHERE breed = 'Tabby';

SELECT cat_id, age FROM cats WHERE cat_id =age;

-- U: UPDATE

UPDATE cats SET breed='Shorthair' WHERE breed='Tabby';

UPDATE cats SET age=14 
WHERE name='Misty';

-- UPDATE exercise

SELECT * FROM cats WHERE name = 'Jackson';

UPDATE cats SET name = 'Jack' WHERE name = 'Jackson';

SELECT * FROM cats WHERE name = 'Ringo';

UPDATE cats SET breed = 'British Shorthair' WHERE name = 'Ringo';

SELECT * FROM cats WHERE breed = 'Maine Coon';

UPDATE cats SET age = 12 WHERE breed = 'Maine Coon';

-- D: DELETE

DELETE FROM cats WHERE name='Egg';

-- DELETE Excercise

DELETE FROM cats WHERE age = 4;

DELETE FROM cats WHERE age = cat_id;

DELETE FROM cats