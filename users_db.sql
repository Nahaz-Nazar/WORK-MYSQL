CREATE DATABASE users_db;
USE users_db;


CREATE TABLE users (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    city VARCHAR(50),
    score INT,
    bonus INT,
    challenge VARCHAR(50)
);

INSERT INTO users VALUES
(1, 'Raj', 'Chennai', 88, 5, 'Fitness'),
(2, 'Anu', 'Mumbai', 91, NULL, 'Diet'),
(3, 'Ravi', 'Chennai', 78, 3, 'Fitness'),
(4, 'Meena', 'Delhi', 82, NULL, 'Diet'),
(5, 'Farah', 'Mumbai', 95, 4, 'Fitness'),
(6, 'Kiran', 'Pune', 70, NULL, 'Yoga'),
(7, 'Latha', 'Pune', 87, NULL, 'Fitness');


SELECT *
FROM users
WHERE score >
(
    SELECT AVG(score)
    FROM users
);


SELECT name
FROM users
WHERE challenge =
(
    SELECT challenge
    FROM users
    WHERE name = 'Farah'
);