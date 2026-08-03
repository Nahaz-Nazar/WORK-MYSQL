USE schoollibrary;

CREATE TABLE categories (
    category_id INT AUTO_INCREMENT PRIMARY KEY,
    category_name VARCHAR(100)
);

INSERT INTO categories (category_name)
VALUES
('Fiction'),
('Science'),
('History'),
('Biography');


CREATE TABLE books (
    book_id INT AUTO_INCREMENT PRIMARY KEY,
    book_name VARCHAR(100),
    category_id INT,
    FOREIGN KEY (category_id) REFERENCES categories(category_id)
);

INSERT INTO books (book_name, category_id)
VALUES
('The Alchemist', 1),
('Atomic Habits', 1),
('A Brief History of Time', 2),
('Sapiens', 3),
('Wings of Fire', 4);



CREATE INDEX idx_book_name
ON books(book_name);



SELECT * FROM categories;

SELECT * FROM books;

SHOW INDEXES FROM books;