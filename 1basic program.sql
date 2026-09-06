                                    /* lecture 1*/

create database school;

use school;

CREATE TABLE student2 (
    student_id INT,
    student_name VARCHAR(50),
    age INT,
    course VARCHAR(50));

INSERT INTO student2 VALUES
(101, 'Priya', 22, 'Python'),
(102, 'Amit', 20, 'SQL'),
(103, 'Sneha', 23, 'Power BI');

SELECT * FROM student2;

SELECT student_name, course FROM student2;

SELECT * FROM student2 
WHERE age > 21;

UPDATE student2 SET course = 'Data Engineering' 
WHERE student_id = 103;

DELETE FROM student2 WHERE student_id = 102;