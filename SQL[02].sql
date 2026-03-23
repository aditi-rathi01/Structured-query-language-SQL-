-- Create a database for your company named XYZ.

-- Step 1: create a table inside this DB to store employee info(id, name and salary).

-- Step 2: Add the following information in the DB:
--        1, "adam", 25000
--        2, "bob", 30000
--        3, "casey", 40000

-- Step 3: Select & view all your table data.



CREATE DATABASE company_XYZ;

USE company_XYZ;

CREATE TABLE Info(
  id INT PRIMARY KEY,
  name VARCHAR(50),
  salary INT NOT NULL
);

INSERT INTO Info VALUES(1, "adam", 25000);
INSERT INTO Info VALUES(2, "bob", 30000);
INSERT INTO Info VALUES(3, "casey", 40000);

SELECT * FROM Info;


-- ____Keys____

-- Primaray Key:
-- It is a column for set of columns in a table that uniquely identifes each row. (a unique id). There is only one Primary Key & It should be NOT null.


-- Foreign Key:
-- A Foreign Key is a column (or sset of columns) in one table that refers to the Primary Key of another Table.
-- It Creates a relationship between two tables.       

-- ______CONSTRAINTS______

-- SQL constraints are used to specify rules data in table.alter
-- Commonly used are:
-- NOT NULL
-- UNIQUE
-- PRIMARY KEY
-- FOREIGN KEY
-- DEFAULT   : set default value of a column. 



CREATE TABLE emp1(
 id INT,
 salary INT DEFAULT 25000);

INSERT INTO emp1 (id) VALUES (101);

SELECT * FROM emp1;
















