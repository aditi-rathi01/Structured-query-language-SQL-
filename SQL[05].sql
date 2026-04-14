-- Table related Queries.
-- DELETE (to delete existing rows)

DELETE FROM table_name
WHERE conditions;

-- Example: 
DELETE FROM student
WHERE marks < 33;

-- Forigen Key:

CREATE DATABASE info;  
USE info;

CREATE TABLE dept(
 id INT PRIMARY KEY,
 name VARCHAR(50)
 );
 
CREATE TABLE teacher(
 id INT PRIMARY KEY,
 name VARCHAR(50),
 dept_id INT,
 FOREIGN KEY (dept_id) REFERENCES dept(id)
);

-- Cascading for FK:
-- Cascading Foreign Key in SQL is a feature that automatically updates or deletes related data in a child in a child table when changes happen in a parent table.

-- First, undrestand Foreign Key:
-- A foreign key is column a in one table(child) that links to the primary key of another table(parent).

-- What does "Cascading" mean?
-- "Cascading" means the effect spreads automatically form parent -> child table.

-- Types of Cascading Actions:

-- ON DELETE CASCADE 
-- If a row in parent table is deleted, all related rows in the child table are also deleted automatically.

-- Similary, for "ON UPDATE CASCADE" 
       
-- For example:  

CREATE TABLE dept(
 dept_id INT PRIMARY KEY,
 name VARCHAR(50)
 );
 
CREATE TABLE teacher(
 id INT PRIMARY KEY,
 name VARCHAR(50),
 dept_id INT,
 FOREIGN KEY (dept_id) REFERENCES dept(dept_id)
 ON DELETE CASCADE
 ON UPDATE CASCADE
);


-- " TABLE related Queries " :

-- ALTER(to change the schema)
-- schema: design ( columns, datatype, constraints)

-- 1.) ADD Column
ALTER TABLE table_name
ADD COLUMN column_name datatype constraints;

-- 2.) DROP column

ALTER TABLE table_name
DROP COLUMN column_name;

-- 3.) RENAME Table

ALTER TABLE table_name
RENAME TO new_table_name;

-- 4.) CHANGE Column(rename)

ALTER TABLE table_name
CHANGE column old_name new_name new_datatype new_constraints;


-- 5.) MODIFY Column(modify datatype/constraints)

ALTER TABLE table_name
MODIFY col_name new_datatype new_constraint;


-- Let's Apply table quries

CREATE DATABASE companyDB;   
USE companyDB;
   
CREATE TABLE Employess(
 emp_id INT PRIMARY KEY,
 emp_name VARCHAR(50),
 dept_id INT
);

-- ADD Column

ALTER TABLE Employess
ADD salary INT; 

-- MODIFY Column
 
ALTER TABLE Employess
MODIFY emp_name VARCHAR(100);

-- RENAME Column

ALTER TABLE Employess
RENAME COLUMN emp_name to employee_name 


-- 6.) TRUNCATE ( to delete table's data)

TRUNCATE TABLE table_name; -- (To delete table data not whole table)


-- Practice Qs

-- Qs: In the student table:
-- a.) change the name of coulmn "name" to "full_name".
-- b.) Delete all the students who scored marks less than 80.
-- c.) Delete the column for grades.

CREATE DATABASE School;
USE School;
CREATE TABLE student(
 name VARCHAR(15),
 Grade VARCHAR(2),
 Score INT
);

INSERT INTO  student
(name, Grade, Score)
VALUES
("Aditi", "A", 98),
("Badal", "B", 88),
("Shivam", "A", 95),
("Arun", "C", 67);

ALTER TABLE student
CHANGE name full_name VARCHAR(10);

SET SQL_SAFE_UPDATES = 0;

DELETE FROM student
WHERE Score < 80;

ALTER TABLE student
DROP COLUMN Grade;

SELECT * FROM student;



















  
 