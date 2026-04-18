-- Join in SQL 

-- A JOIN in SQL is used to combine data from two or more table based on a common column between them.

-- 1.)  Inner Join: Returns only the matching records from both tables.

-- 2.) Outer Join:
-- a.) Left Join: Returns all records from the left table and matching records from the right table.
-- b.) Right Join: Returns all records fro, the right table and matching records from the left table.
-- c.) Full join: Return all records from both tables, whether they match or not.


-- INNER JOIN :
-- Example: 
  
CREATE DATABASE school;
USE school;

CREATE TABLE student(
 student_id INT PRIMARY KEY,
 name VARCHAR(50)
);

CREATE TABLE course(
 student_id INT ,
 course VARCHAR(50)
);

INSERT INTO  student
(student_id, name)
VALUES
(101, "Aditi"),
(102, "Badal"),
(103, "Suraj"),
(104, "Tom");

INSERT INTO course
(student_id, course)
VALUES
(102, "MCA"),
(104, "B.Tech"),
(106, "M.Tech");

SELECT * FROM course;

-- Now, want to apply for Inner Join on course and student

SELECT * 
FROM student
INNER JOIN course
ON student.student_id = course.student_id;


-- LEFT JOIN
-- Example

SELECT * 
FROM student          -- (The table from which we want complete data in LEFT join should be written with FROM).
LEFT JOIN course
ON student.student_id = course.student_id;   


-- FULL JOIN
-- There is no direct method for doing full join in sql. so, user do that with an indirect method. which are 
-- LEFT join  [UNION] RIGHT join.

-- Example

SELECT * 
FROM student          
LEFT JOIN course
ON student.student_id = course.student_id
UNION 
SELECT * 
FROM student          
RIGHT JOIN course
ON course.student_id = student.student_id;  

-- NOTE: 
-- LEFT JOIN -> complete from FROM table.
-- RIGHT JOIN -> complete from JOIN table.
   

-- EXCLUSIVE LEFT JOIN:
-- It means: 
-- "Give me only records from the left table that have NO match in the right table".


SELECT * 
FROM student          
LEFT JOIN course
ON student.student_id = course.student_id
WHERE course.student_id IS NULL;


-- SELF JOIN:
-- It's a regular join. a table is joined to itself.
  
CREATE TABLE employe(
 id INT,
 name VARCHAR(15),
 manager_id INT
);

INSERT INTO employe
(id, name, manager_id)
VALUES
(101, "Aditi", 105),
(102, "Badal", 103),
(103, "Suraj", 101),
(104, "Cia", NULL),
(105, "Shivam", 102);

SELECT *
FROM employe as a
JOIN employe as b
ON a.id = b.manager_id;


SELECT a.name as manager, b.name
FROM employe as a
JOIN employe as b
ON a.id = b.manager_id;


-- UNION   
-- It's used to  combine the result-set of two or more selects statements.
-- give unique statements.

-- TO USE IT: 
--   every select should have same no. of columns.
--   coloumns must have similar datatypes.
--   coloumns in every select should be in the same order.
 
-- SYNTAX:

SELECT coloumns FROM table_a
UNION 
SELECT coloumn(s) FROM table_b;























