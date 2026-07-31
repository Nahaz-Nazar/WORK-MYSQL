CREATE DATABASE groceryShop_db;

USE GroceryShop_db;

CREATE TABLE products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100),
    price DECIMAL(10,2)
);

ALTER TABLE products
ADD category VARCHAR(50);

TRUNCATE TABLE products;

DROP DATABASE groceryShop_db;