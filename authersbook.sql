USE authorsbook;

CREATE TABLE authors (
    author_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100)
);

INSERT INTO authors (name)
VALUES
('Chetan Bhagat'),
('Paulo Coelho'),
('J.K. Rowling');

CREATE TABLE books (
    book_id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(100),
    author_id INT,
    FOREIGN KEY (author_id) REFERENCES authors(author_id)
);

INSERT INTO books (title, author_id)
VALUES
('Five Point Someone', 1),
('2 States', 1),
('The Alchemist', 2),
('Harry Potter and the Philosopher''s Stone', 3),
('Harry Potter and the Chamber of Secrets', 3);


CREATE INDEX idx_author_id
ON books(author_id);

SELECT * FROM authors;

SELECT * FROM books;

SHOW INDEXES FROM books;