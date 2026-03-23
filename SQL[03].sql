--     --------CONSTRAINTS ---------

-- CHECK    it can limit the values allowed in a column

CREATE DATABASE INTRO;

USE INTRO; 

CREATE TABLE city(
  id INT PRIMARY KEY,
  city VARCHAR(50),
  age INT,
  CONSTRAINT age_check CHECK (age >= 18 AND city = "Delhi")
);

-- METHOD 2 

CREATE TABLE newTab (
  age INT CHECK (AGE >= 18)
); 

CREATE DATABASE college;

USE college;

CREATE TABLE student (
  rollno  INT PRIMARY KEY,
  name VARCHAR(50),
  marks INT NOT NULL,
  grade VARCHAR(1),
  city VARCHAR(20)
);

INSERT INTO student
(rollno, name, marks, grade, city)
VALUES

(101, "adiit", 89, "B", "Delhi"),
(102, "badal", 68, "D", "Delhi"),
(103, "Arjun", 77, "C", "Hastinapur"),
(104, "Karan", 55, "F", "Delhi"),
(105, "Rajveer", 98, "A", "Gurgaon"),
(106, "Manmohan", 92, "A", "Ghazibaad");

SELECT * FROM  student ;                -- To Select all 

SELECT rollno, name FROM student;      -- Basic Syntax, 

-- Another keyward, 
-- DISTINCT KEY, where we want only unique key,

SELECT DISTINCT city FROM student; 


--  *****   Where Clause     ****** 
-- To define some conditions

SELECT col1, col2 FROM table_name
WHERE conditions;

-- For example;

SELECT * FROM student WHERE marks > 80;
SELECT * FROM student WHERE city = "Delhi" ;

SELECT * 
FROM student 
WHERE marks < 70 AND city = "Delhi";

SELECT * FROM student WHERE marks BETWEEN 80 AND 100;
  
SELECT * FROM student WHERE city IN ("Delhi", "Noida");

SELECT * FROM student WHERE city NOT IN ("Delhi", "Noida");

-- ***** LIMIT CLAUSE ***

SELECT * FROM student
LIMIT 3; 

SELECT * FROM student 
WHERE marks > 60
LIMIT 3;


-- **** ORDER BY CLAUSE *****

SELECT * 
FROM student
ORDER BY marks ASC;

SELECT name, marks
FROM student
ORDER BY marks DESC
LIMIT 3;


-- ====== Aggregate Functions ======

-- Aggregate functions perfome a calculation on a set of values, and return a single value.
-- COUNT()
-- MAX()
-- MIN()
-- SUM()
-- AVG()


SELECT marks, name
FROM student;       

SELECT COUNT(name) FROM student;
SELECT AVG(marks) FROM student;
SELECT MIN(marks) FROM student;










