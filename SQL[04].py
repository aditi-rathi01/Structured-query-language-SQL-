CREATE DATABASE company;
USE company;

CREATE TABLE team(
  id INT UNIQUE KEY,
  name VARCHAR(50),
  salary INT,
  age INT,
  city VARCHAR(50)
);

INSERT INTO team
(id, name, salary, age, city)
VALUES

(202601, "Aditi", 60000, 22, "Delhi"),
(202602, "Badal", 40000, 43, "Noida"),
(2020603, "Rohini", 50000, 33, "Mumbai"),
(202604, "Suraj", 34000, 24, "Delhi"),
(202605, "Arjun", 23000, 55, "Mumbai");

SELECT  name, salary FROM team
WHERE salary >= 35000;

SELECT * FROM team
WHERE age >= 35; 

SELECT * FROM team
ORDER BY name ASC;


-- ***** GROUP BY CLAUSE *****

-- GROUP BY groups similar data and give one result for each group.
-- Example of GROUP BY
-- Suppose we have a table:

-- name     class     marks
-- Aditi     10        80
-- Riya      10        70
-- Aman      9         85
-- Ravi      9         75

-- Query:

SELECT class, SUM(marks)
FROM students
GROUP BY class;

-- OUTPUT: 

-- class   SUM(marks)

-- 10      150
-- 9       160


SELECT city, count(name)
FROM team
GROUP BY city;

SELECT city, name , count(salary)
FROM team
GROUP BY city, name; 

SELECT city, avg(age)
FROM team
GROUP BY city;


-- Practice Qs

-- Write the Query to find avg marks in each city ascending order. 

CREATE DATABASE school;

USE school;

CREATE TABLE data(
 id INT UNIQUE KEY,
 name VARCHAR(50),
 marks INT,
 city VARCHAR(50)
);

INSERT INTO data
(id, name, marks, city)
VALUES 

(22001, "Aditi", 90, "Delhi" ),
(22002, "Badal", 88, "Mumbai"),
(22003, "Aashis", 60, "Delhi"),
(22004, "Aman", 56, "Noida"),
(22005, "Rajkumar", 27, "Noida");


INSERT INTO data VALUES(22006, "Subham", 87, "Noida");

SELECT * FROM data;

SELECT city, AVG(marks)
FROM data
GROUP BY city
ORDER BY AVG(marks) DESC;


-- PRACTICE Qs
-- For the given table, find the total payment according to each payment method.

CREATE  DATABASE payment;
USE payment;
CREATE TABLE method(
  customer_id INT PRIMARY KEY,
  customer VARCHAR(50),
  mode VARCHAR(50), 
  city VARCHAR(50)
);

INSERT INTO  method
(customer_id, customer, mode, city)
VALUES

(101, "Oiliva Barrett", "Netbanking", "Portland"),
(102, "Ethan Sinclair", "Credit Card", "Miami"),
(103, "Maya Hernandez", "Credit Card", "Seattle"),
(104, "Liam Donovan",  "NetBanking", "Denver"),
(105, "Sophai Nguyen", "Credit Card", "New Orieanes"),
(106, "Caleb Foster", "Debit Card", "Minneapolis");


SELECT mode, COUNT(customer)
FROM method
GROUP BY mode;


-- HAVING clause

-- similar to where i.e. applies condition on rows. Used when we want to apply any condition after grouping.

-- Example: We want to see city of those students who have scored more than 80. 

INSERT INTO data
(id, name, marks, city)
VALUES 

(22001, "Aditi", 90, "Delhi" ),
(22002, "Badal", 88, "Mumbai"),
(22003, "Aashis", 60, "Delhi"),
(22004, "Aman", 56, "Noida"),
(22005, "Rajkumar", 27, "Noida");


INSERT INTO data VALUES(22006, "Subham", 87, "Noida");

SELECT DISTINCT city FROM data;   

SELECT city, COUNT(id)
FROM data
GROUP BY city
HAVING MAX(marks) > 85;

-- Output for the following: 
-- City       Count
-- Delhi      2
-- Mumbai     1
-- Noida      3 

-- because, our query only filter with by city, 
-- Not by student

-- Step-by-step logic:
-- GROUP BY city:

-- DELHI 
-- Marks: 90,60
-- MAX = 90 (>85) -> Include
-- count = 2

SELECT city, COUNT(name)
FROM data
GROUP BY city
HAVING MAX(marks) >= 90;
   
   
-- General Order

-- SELECT column(s)
-- FROM table_name
-- WHERE condition
-- GROUP BY column(s)
-- HAVING condtition
-- ORDER BY column(s) ASC;  
   

-- TABLE related Queries

-- update(to update existing rows)

-- UPDATE table_name
-- SET col1 = val1, col2 = val2
-- WHERE condition;

SET SQL_SAFE_UPDATES = 0;    
-- To update anything in sql first we to come out from Safe Updates

UPDATE data
SET marks = marks + 1; 

SELECT * FROM data; 




  










