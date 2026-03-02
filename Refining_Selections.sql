USE book_shop;

INSERT INTO books
    (title, author_fname, author_lname, released_year, stock_quantity, pages)
    VALUES ('10% Happier', 'Dan', 'Harris', 2014, 29, 256), 
           ('fake_book', 'Freida', 'Harris', 2001, 287, 428),
           ('Lincoln In The Bardo', 'George', 'Saunders', 2017, 1000, 367);
           
SELECT DISTINCT
    author_lname
FROM
    books;	
    
SELECT DISTINCT
    released_year
FROM
    books;
    
SELECT DISTINCT
    CONCAT(author_fname, ' ', author_lname)
FROM
    books;
    
SELECT DISTINCT
    author_fname, author_lname
FROM
    books;
    
SELECT 
    book_id, author_fname, author_lname, released_year
FROM
    books
ORDER BY author_fname;

SELECT 
    book_id, author_fname, author_lname, released_year
FROM
    books
ORDER BY 4;

SELECT 
    author_fname, author_lname, released_year
FROM
    books
ORDER BY author_lname , released_year;

SELECT 
    CONCAT(author_fname, ' ', author_lname) AS author
FROM
    books
ORDER BY author;

SELECT 
    book_id, title, released_year
FROM
    books
ORDER BY book_id
LIMIT 5;

SELECT 
    book_id, title, released_year
FROM
    books
ORDER BY book_id
LIMIT 7 , 5;

SELECT 
    title, author_fname, author_lname
FROM
    books
WHERE
    author_fname LIKE '%da%';
    
SELECT 
    title, author_fname, author_lname, stock_quantity
FROM
    books
WHERE
    author_fname LIKE '____';
    
SELECT 
    title, author_fname, author_lname, stock_quantity
FROM
    books
WHERE
    title LIKE '%\_%'; 

-- or \%