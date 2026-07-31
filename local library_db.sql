CREATE TABLE books (
    book_id INT PRIMARY KEY,
    title VARCHAR(100)
);

CREATE TABLE borrowers (
    borrower_id INT PRIMARY KEY,
    name VARCHAR(100),
    book_id INT
);

INSERT INTO books VALUES
(1, 'The Alchemist'),
(2, 'The Power of Now'),
(3, 'Think and Grow Rich'),
(4, 'Clean Code');

INSERT INTO borrowers VALUES
(101, 'Alice', 1),
(102, 'Bob', 2),
(103, 'Charlie', NULL);

SELECT books.book_id,
       books.title,
       borrowers.name
FROM books
LEFT JOIN borrowers
ON books.book_id = borrowers.book_id;

SELECT borrowers.borrower_id,
       borrowers.name,
       books.book_id,
       books.title
FROM borrowers
LEFT JOIN books
ON borrowers.book_id = books.book_id;

SELECT books.book_id,
       books.title
FROM books
LEFT JOIN borrowers
ON books.book_id = borrowers.book_id
WHERE borrowers.book_id IS NULL;

SELECT borrowers.borrower_id,
       borrowers.name,
       books.title
FROM borrowers
LEFT JOIN books
ON borrowers.book_id = books.book_id;