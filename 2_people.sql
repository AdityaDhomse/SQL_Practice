CREATE DATABASE people;

USE people;

CREATE TABLE people 
(
	first_name VARCHAR(20),
    last_name VARCHAR(20),
    age INT
);

DESC people;

INSERT INTO people(first_name, last_name, age)
VALUES ("Aditya", "Dhomse", 21),
	   ("Linda", "Belcher", 45),
	   ("Phillip", "Frond", 38),
	   ("Calvin", "Fischoeder", 70);
       
SELECT * FROM people;