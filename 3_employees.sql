CREATE DATABASE employees;

USE employees;

CREATE TABLE employees
(
	employee_id INT AUTO_INCREMENT,
    last_name VARCHAR(50) NOT NULL,
    first_name VARCHAR(50) NOT NULL,
    middle_name VARCHAR(50),
    age INT NOT NULL,
    current_status VARCHAR(20) NOT NULL DEFAULT 'employed',
    PRIMARY KEY(employee_id)
);

INSERT INTO employees (first_name, last_name, age)
VALUES ('Aditya', 'Dhomse', 21);

SELECT * FROM employees;