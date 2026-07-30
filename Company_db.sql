CREATE DATABASE company_db;
USE company_db;

CREATE TABLE employees (
    id INT PRIMARY KEY,
    name VARCHAR(100)
);

CREATE TABLE departments (
    emp_id INT,
    department_name VARCHAR(100)
);

INSERT INTO employees VALUES
(1, 'Anjali'),
(2, 'Rohan'),
(3, 'Meena');

INSERT INTO departments VALUES
(1, 'HR'),
(2, 'IT'),
(4, 'Finance');

SELECT employees.id,
       employees.name,
       departments.department_name
FROM employees
LEFT JOIN departments
ON employees.id = departments.emp_id;

SELECT employees.id,
       employees.name,
       departments.department_name
FROM employees
INNER JOIN departments
ON employees.id = departments.emp_id;

SELECT employees.id,
       employees.name,
       departments.department_name
FROM employees
RIGHT JOIN departments
ON employees.id = departments.emp_id;