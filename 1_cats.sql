SHOW databases;

CREATE DATABASE pet_shop;

USE pet_shop;

CREATE TABLE cats
(
	name VARCHAR(20),
    age INT
);

DESC cats;

INSERT INTO cats(name, age)
VALUES ("Chakuli", 1), ("Mini", 4);

SELECT * FROM cats;

CREATE TABLE cats2 
(
	name VARCHAR(50) NOT NULL DEFAULT 'anonymous',
    age INT NOT NULL DEFAULT 99
);

INSERT INTO cats2()
VALUES ();

SELECT * FROM cats2;

DESC cats2;

CREATE TABLE unique_cats 
(
	cat_id INT NOT NULL PRIMARY KEY,
	name VARCHAR(50) NOT NULL DEFAULT 'anonymous',
    age INT NOT NULL DEFAULT 99
);

INSERT INTO unique_cats(cat_id, name, age)
VALUES (2, 'bingo', 3);

SELECT * FROM unique_cats;

DESC unique_cats;