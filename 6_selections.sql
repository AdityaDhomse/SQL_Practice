CREATE DATABASE query_practice;

USE query_practice;

CREATE TABLE products (
    id INT PRIMARY KEY AUTO_INCREMENT,
    product_name VARCHAR(50) NOT NULL,
    category VARCHAR(50),
    price INT,
    brand VARCHAR(50)
);

INSERT INTO products (product_name, category, price, brand)
VALUES
    ('iPhone 14', 'Mobile', 80000, 'Apple'),
    ('Galaxy S23', 'Mobile', 75000, 'Samsung'),
    ('MacBook Air', 'Laptop', 95000, 'Apple'),
    ('Inspiron 15', 'Laptop', 60000, 'Dell'),
    ('ThinkPad X1', 'Laptop', 120000, 'Lenovo'),
    ('iPad Pro', 'Tablet', 70000, 'Apple'),
    ('Galaxy Tab', 'Tablet', 50000, 'Samsung'),
    ('AirPods Pro', 'Accessories', 25000, 'Apple'),
    ('Boat Rockerz', 'Accessories', 3000, 'Boat'),
    ('Sony WH-1000XM5', 'Accessories', 30000, 'Sony');
    
SELECT DISTINCT
    category
FROM
    products;

SELECT 
    product_name, price
FROM
    products
ORDER BY price DESC;

SELECT 
    product_name, price
FROM
    products
ORDER BY price DESC
LIMIT 3;

SELECT 
    product_name
FROM
    products
WHERE
    product_name LIKE 'Galaxy%';

SELECT 
    product_name, price
FROM
    products
WHERE
    brand = 'Apple'
ORDER BY price DESC
LIMIT 2;

SELECT 
    *
FROM
    products
WHERE
    category = 'Laptop' AND price > 70000
ORDER BY price;

SELECT 
    COUNT(*) AS count
FROM
    products;

SELECT 
    category, COUNT(*) AS total_products
FROM
    products
GROUP BY category;

SELECT 
    MAX(price) AS highest_price
FROM
    products;

SELECT 
    *
FROM
    products
WHERE
    price > (SELECT 
            AVG(price)
        FROM
            products);

SELECT 
    *
FROM
    products
WHERE
    price = (SELECT 
            MAX(price)
        FROM
            products);

SELECT DISTINCT
    price
FROM
    products
WHERE
    price < (SELECT 
            MAX(price)
        FROM
            products)
ORDER BY price DESC
LIMIT 1 , 1;

SELECT DISTINCT
    price
FROM
    products
ORDER BY price DESC
LIMIT 2 , 1;

SELECT 
    *
FROM
    products
WHERE
    price = (SELECT DISTINCT
            price
        FROM
            products
        ORDER BY price DESC
        LIMIT 2 , 1);