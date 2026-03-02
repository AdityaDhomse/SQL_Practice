USE book_shop;

SELECT 
    COUNT(*)
FROM
    books;
    
SELECT 
    COUNT(author_fname)
FROM
    books;
    
SELECT 
    COUNT(DISTINCT author_fname)
FROM
    books;

SELECT 
    COUNT(DISTINCT author_lname)
FROM
    books;

SELECT 
    COUNT(*)
FROM
    books
WHERE
    title LIKE '%the%';
    
SELECT 
    author_lname
FROM
    books
GROUP BY author_lname;

SELECT 
    author_lname, COUNT(*) AS books_written
FROM
    books
GROUP BY author_lname
ORDER BY books_written;

SELECT 
    released_year, COUNT(*) AS books_written
FROM
    books
GROUP BY released_year
ORDER BY released_year , books_written;

SELECT 
    MIN(released_year)
FROM
    books;
    
SELECT 
    *
FROM
    books;
    
SELECT 
    title, pages
FROM
    books
WHERE
    pages = (SELECT 
            MAX(pages)
        FROM
            books);
            
SELECT 
    CONCAT(author_fname, ' ', author_lname) AS author,
    COUNT(*) AS count
FROM
    books
GROUP BY author
ORDER BY count DESC;

SELECT 
    author_fname,
    author_lname,
    MIN(released_year),
    MAX(released_year),
    COUNT(*)
FROM
    books
GROUP BY author_lname , author_fname
ORDER BY MIN(released_year);

SELECT 
    author_fname, author_lname, MAX(pages)
FROM
    books
GROUP BY author_lname , author_fname;

SELECT 
    CONCAT(author_fname, ' ', author_lname) AS author,
    MAX(pages) AS 'longest book'
FROM
    books
GROUP BY author
ORDER BY MAX(pages) DESC;

SELECT 
    SUM(pages)
FROM
    books;

SELECT 
    author_fname, author_lname, SUM(pages)
FROM
    books
GROUP BY author_lname , author_fname;

SELECT 
    AVG(released_year)
FROM
    books;

SELECT 
    released_year, AVG(stock_quantity), COUNT(*)
FROM
    books
GROUP BY released_year
ORDER BY released_year;