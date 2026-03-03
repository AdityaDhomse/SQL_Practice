CREATE DATABASE string_practice;

USE string_practice;

CREATE TABLE users (
    id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(100)
);

INSERT INTO users (first_name, last_name, email) 
VALUES 
	('Aditya', 'Dhomase', 'aditya@gmail.com'),
    ('Rahul', 'Sharma', 'rahul123@gmail.com'),
    ('Neha', 'Patil', 'neha.patil@gmail.com'),
    ('Amit', 'Joshi', 'amitj@gmail.com'),
    ('Priya', 'Kulkarni', 'priya.k@gmail.com');
    
SELECT 
    CONCAT(first_name, ' ', last_name) AS full_name
FROM
    users;
    
SELECT 
    UPPER(email) AS email
FROM
    users;
    
SELECT 
    SUBSTR(first_name, 1, 4) AS first_4_letters
FROM
    users;
    
SELECT 
    REPLACE(email,
        'gmail.com',
        'company.com') AS email
FROM
    users;
    
SELECT 
    CHAR_LENGTH(CONCAT(first_name, ' ', last_name)) AS full_name_length
FROM
    users;
    
SELECT 
	CONCAT(LOWER(first_name), '.', LOWER(last_name)) AS username
FROM
	users;
    
SELECT 
	SUBSTR(email, LOCATE('@', email) + 1) AS email_domain
FROM
	users;
    
SELECT 
    CONCAT(UPPER(LEFT(first_name, 1)),
            '.',
            UPPER(LEFT(last_name, 1))) AS initials
FROM
    users; 
    
SELECT 
    CONCAT(REPEAT('*',
                CHAR_LENGTH(SUBSTR(email, 1, LOCATE('@', email) - 1))),
            SUBSTR(email, LOCATE('@', email))) AS masked_email
FROM
    users;
    
SELECT 
    CONCAT(LOWER(SUBSTR(first_name, 1, 3)),
            LOWER(SUBSTR(last_name, 1, 2)),
            RIGHT(CONCAT('00', id), 2),
            SUBSTR(email, LOCATE('@', email))) AS professional_email
FROM
    users;