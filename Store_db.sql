CREATE DATABASE store_db;
USE store_db;

CREATE TABLE products (
    id INT PRIMARY KEY,
    name VARCHAR(100),
    category VARCHAR(100),
    price DECIMAL(10,2), 
    in_stock ENUM('Yes', 'No') 
);

SELECT DISTINCT category
FROM products;

SELECT *
FROM products
WHERE in_stock = 'Yes' AND price < 500;

SELECT *
FROM products
WHERE in_stock = 'No' OR price > 1000;

SELECT name, price
FROM products
ORDER BY price DESC;

SELECT name, ROUND(price * 1.18, 2) AS price_with_tax
FROM products;