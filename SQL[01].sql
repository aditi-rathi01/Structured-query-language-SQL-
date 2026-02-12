-- _____Creating first Database____

-- CREATE DATABASE db_name;

CREATE DATABASE temp1;

DROP DATABASE temp1;    -- For deletting database.  


-- ____ Creating Our First Table_____

-- USE db_name;

-- CREATE TABLE table_name(
--    column_name1 datatype constraint,
--    column_name2 datatype constraint,
--    column_name3 datatype constraint
-- );

-- Creating a database called college.

CREATE DATABASE college;

USE college;

CREATE TABLE student (
  id INT PRIMARY KEY,
  name VARCHAR(50),
  age INT NOT NULL
);  

-- Inserting Data inside the DATABASE;

INSERT INTO student VALUES(1,  "ADITI", 22);
INSERT INTO student VALUES(2, "RAM", 21);

-- If we want to see Our Created Table :
SELECT * FROM student; 

-- ____SQL Datatypes____ 
 
--  They define the type of values that can be stored in a cloumn.

-- CHAR [DATATYPE]: String(0-255), can store characters of fixed length. if CHAR(50) is given then 50 words of memory is reserved for it. wheter we can save "PUNE" . then other, "46" words memory reserved no another word will save in it.

-- VARCHAR [DATATYPE]: string(0-255), can store characters up to given length. if VARCHAR(50) is given then not all 50 words of memomry will reserved for it. if we save "PUNE", then other, '46' words memory will not reversed for it.alter

-- DATE [DATATYPE]: data in format YYYY-MM-DD range from 1000-01-01 to 9999-12-31.



-- ____Types of SQL Commands___

-- 1.) DDL(Data Defination Language): create, alter, rename, truncate & drop
-- 2.) DQL(Data Query Language): select
-- 3.) DML(Data Manipulation Language): insert, update & delete
-- 4.) DCL(Data Control Language): grant & revoke permission to users.
-- 5.) TCL(Transaction control Language): start transiction, commit.


-- ____Database related Quries___

-- If a database is already exist and we try to create another database with same name. then, it will through an error to ignore that error we can use this:
-- CREATE DATABASE IF NOT EXISTS college;

-- Same condition apply for DROP
-- DROP DATABASE db_name;
-- DROP DATABASE IF EXISTS db_name;


-- ____Creating Table_____

CREATE DATABASE university;
USE university;

CREATE TABLE student(
  rollno INT PRIMARY KEY,
  name VARCHAR(50)
);            

-- ___ TABLE RELATED QURIES___
-- Insert

-- INSERT INTO table_name
-- (colname1, colname2)
-- VALUES 
-- (col1_v1, col2_v2),
-- (col1v2, col2_v2);


CREATE DATABASE shop;
USE shop; 

CREATE TABLE amount(
  name VARCHAR(50),
  quantity INT PRIMARY KEY
);

INSERT INTO amount
(name, quantity)
VALUES
("SALT", 20),
("SUGAR", 60),
("SPICES", 70);

SELECT * FROM amount;















 


  