USE book_shop;

SELECT UPPER(REVERSE('Why does my cat look at me with such hatred?'));

SELECT 
    REPLACE(CONCAT('I', ' ', 'like', ' ', 'cats'),
        ' ',
        '-');
        
SELECT 
    REPLACE(title, ' ', '->')
FROM
    books;
    
SELECT 
    author_lname AS forwards, REVERSE(author_lname) AS backwards
FROM
    books;
    
SELECT 
    UPPER(CONCAT(author_fname, ' ', author_lname)) AS full_name_in_caps
FROM
    books;
    
SELECT 
    *
FROM
    books;
    
SELECT 
    CONCAT(title,
            ' was released in ',
            released_year)
FROM
    books;
    
SELECT 
    title, CHAR_LENGTH(title) AS character_count
FROM
    books;
    
SELECT 
    CONCAT(SUBSTRING(title, 1, 10), '...') AS short_title,
    CONCAT(author_lname, ',', author_fname) AS author,
    CONCAT(stock_quantity, ' in stock') AS quantity
FROM
    books
WHERE
    released_year = '2001';