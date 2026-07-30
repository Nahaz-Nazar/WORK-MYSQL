CREATE DATABASE report_db;
USE report_db;

CREATE TABLE books (
    id INT PRIMARY KEY,
    title VARCHAR(100),
    author VARCHAR(100),
    price DECIMAL(10,2),
    stock_status VARCHAR(20),
    genre VARCHAR(50)
);

INSERT INTO books
(id, title, author, price, stock_status, genre)
VALUES
(1, 'The Great Gatsby', 'F. Scott Fitzgerald', 350, 'In Stock', 'Fiction'),
(2, 'Wings of Fire', 'A.P.J. Abdul Kalam', 250, 'In Stock', 'Biography'),
(3, 'Rich Dad Poor Dad', 'Robert Kiyosaki', 800, 'Out of Stock', 'Finance'),
(4, 'The Alchemist', 'Paulo Coelho', 450, 'In Stock', 'Fiction'),
(5, 'Sapiens', 'Yuval Noah Harari', 900, 'Out of Stock', 'History');

SELECT DISTINCT genre
FROM books;

SELECT *
FROM books
WHERE stock_status = 'In Stock' AND price < 400;

SELECT *
FROM books
WHERE stock_status = 'Out of Stock' OR price > 700;

SELECT title, price, price * 1.10  AS price_with_gst
FROM books;

SELECT title, price, stock_status
FROM books
ORDER BY price DESC;