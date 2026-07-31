CREATE DATABASE studentdb;
USE studentdb;

CREATE TABLE students (
    student_id INT PRIMARY KEY,
    name VARCHAR(100),
    email VARCHAR(100) UNIQUE
);

INSERT INTO students
VALUES
(1, 'Rahul', 'rahul@gmail.com'),
(2, 'Anu', 'anu@gmail.com'),
(3, 'John', 'john@gmail.com');


CREATE TABLE courses (
    course_id INT PRIMARY KEY,
    course_name VARCHAR(100)
);

INSERT INTO courses
VALUES
(101, 'MySQL'),
(102, 'Python'),
(103, 'Java');


CREATE TABLE enrollments (
    student_id INT,
    course_id INT,
    FOREIGN KEY (student_id) REFERENCES students(student_id),
    FOREIGN KEY (course_id) REFERENCES courses(course_id)
);


INSERT INTO enrollments
VALUES
(1, 101),
(2, 102),
(3, 103);