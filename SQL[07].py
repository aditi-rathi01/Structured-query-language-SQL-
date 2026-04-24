-- SQL SUB QURIES:
-- Query inside the Query. 

CREATE DATABASE school;
USE school;

CREATE TABLE marks(
 id INT PRIMARY KEY,
 name VARCHAR(10),
 marks INT
);
INSERT INTO marks
(id, name, marks)
VALUES
(101, "Aditi", 98),
(102, "Abhiraj", 67),
(103, "Suresh", 87),
(104, "Suraj", 69),
(105, "Shivam", 85),
(106, "Jyoti", 77);


-- Now, let's Understand the need for SQL SUB-QURIES.
-- Suppose, I apply, a Condition of SQL where, i need data of those student who, score marks above the average marks.
 

SELECT AVG(marks)
FROM marks;
-- Average is 80.5000
-- Now, Suppose because of some reason, we have to add some marks to students marks. but here, we already apply
-- a fixed condition select name of student with marks > 80.5000

SELECT name, marks
FROM marks
WHERE marks> 80.50000;   

-- Here is the role of SQL SUB QURIES aries. where if marks change due to some conditional reason, the thier
-- Average is automatically changes. and condtion automatically applied.

SELECT name, marks 
FROM marks
WHERE marks > (SELECT AVG(marks) FROM marks);













