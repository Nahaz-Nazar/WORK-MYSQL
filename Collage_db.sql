CREATE DATABASE college_db;

USE college_db;

CREATE TABLE students (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    age INT,
    department VARCHAR(50),
    grade INT
);

INSERT INTO students (id, name, age, department, grade) VALUES
(1, 'Rahul Sharma', 21, 'Computer Science', 92),
(2, 'Ananya Das', 19, 'Physics', 90),
(3, 'Arjun Varma', 22, 'Mathematics', 75),
(4, 'Sneha Joseph', 20, 'Computer Science', 85);

SELECT * 
FROM students
WHERE age > 20;


SELECT * 
FROM students
WHERE department = 'Computer Science'
   OR department = 'Physics';

SELECT * 
FROM students
WHERE grade = 90;

SELECT * 
FROM students
WHERE grade BETWEEN 70 AND 90;