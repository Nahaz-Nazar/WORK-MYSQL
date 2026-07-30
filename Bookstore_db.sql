CREATE DATABASE bookstore_db;

USE bookstore_db;

CREATE TABLE books (
    id INT PRIMARY KEY,
    title VARCHAR(100),
    author VARCHAR(100),
    price INT,
    genre VARCHAR(50)
);

INSERT INTO books (id, title, author, price, genre) VALUES
(1, 'The Great Gatsby', 'F. Scott Fitzgerald', 450, 'Fiction'),
(2, 'A Brief History of Time', 'Stephen Hawking', 550, 'Science'),
(3, 'The Da Vinci Code', 'Dan Brown', 399, 'Mystery'),
(4, 'Sapiens', 'Yuval Noah Harari', 600, 'History'),
(5, 'Wings of Fire', 'A.P.J. Abdul Kalam', 350, 'Biography');

SELECT * FROM books
WHERE price > 400;

SELECT * FROM books
WHERE genre IN ('History', 'Science', 'Fiction');

SELECT * FROM books
WHERE title = 'The Great Gatsby';

SELECT * FROM books
WHERE author <> 'Dan Brown';