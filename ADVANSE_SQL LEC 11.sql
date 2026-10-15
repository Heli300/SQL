                                 /* LECTURE 11 */
CREATE DATABASE ADVANCE_SQL;

USE ADVANCE_SQL;

CREATE TABLE Employees (
    employee_id INT,
    employee_name VARCHAR(50),
    department VARCHAR(50),
    gender VARCHAR(10),
    salary DECIMAL(10,2),
    city VARCHAR(50),
    joining_date DATE
);

INSERT INTO Employees VALUES
(101, 'Heli', 'IT', 'Female', 45000, 'Ahmedabad', '2024-01-15'),
(102, 'Rahul', 'HR', 'Male', 40000, 'Surat', '2023-06-10'),
(103, 'Priya', 'Finance', 'Female', 55000, 'Vadodara', '2022-03-20'),
(104, 'Amit', 'IT', 'Male', 60000, 'Ahmedabad', '2021-08-05'),
(105, 'Neha', 'Sales', 'Female', 35000, 'Rajkot', '2024-07-12'),
(106, 'Karan', 'Marketing', 'Male', 48000, 'Surat', '2023-02-18'),
(107, 'Pooja', 'HR', 'Female', 42000, 'Ahmedabad', '2022-11-25'),
(108, 'Rohan', 'IT', 'Male', 65000, 'Vadodara', '2020-05-14'),
(109, 'Anjali', 'Finance', 'Female', 58000, 'Rajkot', '2021-09-30'),
(110, 'Vikas', 'Sales', 'Male', 39000, 'Ahmedabad', '2024-03-11'),
(111, 'Meera', 'Marketing', 'Female', 52000, 'Surat', '2022-06-17'),
(112, 'Arjun', 'IT', 'Male', 70000, 'Ahmedabad', '2019-12-02'),
(113, 'Kavita', 'Finance', 'Female', 62000, 'Vadodara', '2020-10-21'),
(114, 'Nikhil', 'Sales', 'Male', 41000, 'Rajkot', '2023-04-08'),
(115, 'Sneha', 'HR', 'Female', 46000, 'Ahmedabad', '2024-02-19'),
(116, 'Dev', 'Marketing', 'Male', 50000, 'Vadodara', '2021-07-07'),
(117, 'Riya', 'IT', 'Female', 58000, 'Surat', '2022-01-28'),
(118, 'Manish', 'Finance', 'Male', 54000, 'Ahmedabad', '2023-08-16'),
(119, 'Ayesha', 'Sales', 'Female', 37000, 'Surat', '2024-05-23'),
(120, 'Suresh', 'HR', 'Male', 43000, 'Rajkot', '2022-12-12');

CREATE TABLE Customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(50),
    city VARCHAR(50)
);

INSERT INTO Customers VALUES
(101, 'Arjun', 'Ahmedabad'),
(102, 'Meera', 'Delhi'),
(103, 'Dev', 'Mumbai'),
(104, 'Isha', 'Surat'),
(105, 'Krish', 'Pune'),
(106, 'Anaya', 'Vadodara');

/* 1.CASE
Create:
salary_category
using:
>= 100000 → High
>= 60000  → Medium
< 60000   → Low.*/
SELECT
    employee_id,
    employee_name,
    salary,
    CASE
        WHEN salary >= 100000 THEN 'High'
        WHEN salary >= 60000 THEN 'Medium'
        ELSE 'Low'
    END AS salary_category
FROM Employees;

/* 2.Conditional Aggregation
Find:
Number of high-salary employees
Number of medium-salary employees
Number of low-salary employees.*/
SELECT
    SUM(CASE
            WHEN salary >= 100000 THEN 1
            ELSE 0
        END) AS High_Salary_Count,

    SUM(CASE
            WHEN salary >= 60000 AND salary < 100000 THEN 1
            ELSE 0
        END) AS Medium_Salary_Count,

    SUM(CASE
            WHEN salary < 60000 THEN 1
            ELSE 0
        END) AS Low_Salary_Count
FROM Employees;

/* 3.Set Operators
Create two queries:
Cities from Employees
Cities from Customers
Use:
UNION
UNION ALL
INTERSECT
EXCEPT.*/
SELECT city
FROM Employees
UNION
SELECT city
FROM Customers;

SELECT city
FROM Employees
UNION ALL
SELECT city
FROM Customers;

SELECT city
FROM Employees
INTERSECT
SELECT city
FROM Customers;

SELECT city
FROM Employees
EXCEPT
SELECT city
FROM Customers;
/* 4.PIVOT
Create a department-wise gender count:
Department | Male | Female.*/
SELECT
    department,
    [Male],
    [Female]
FROM
(
    SELECT
        department,
        gender
    FROM Employees
) AS SourceData
PIVOT
(
    COUNT(gender)
    FOR gender IN ([Male], [Female])
) AS PivotData;

/* 5. View
Create a view containing:
employee_id
employee_name
department
salary
for employees earning more than 70000.*/
CREATE VIEW High_Salary_Employees AS
SELECT
    employee_id,
    employee_name,
    department,
    salary
FROM Employees
WHERE salary > 70000;

SELECT * FROM High_Salary_Employees;

/* 6.Temporary Table
Create:
#HighSalaryEmployees
containing employees earning more than 100000.*/
SELECT
    employee_id,
    employee_name,
    department,
    salary,
    city,
    joining_date
INTO #HighSalaryEmployees
FROM Employees
WHERE salary > 100000;

/* 7.Stored Procedure
Create:
GetEmployeesByCity
with:
@City
as a parameter.*/
CREATE PROCEDURE GetEmployeesByCity
    @City VARCHAR(50)
AS
BEGIN
    SELECT
        employee_id,
        employee_name,
        department,
        salary,
        city
    FROM Employees
    WHERE city = @City;
END;

EXEC GetEmployeesByCity @City = 'Mumbai';

/* 8.Index
Create an index on:
department
Then compare query execution behavior.*/
SELECT *
FROM Employees
WHERE department = 'IT';

CREATE INDEX IX_Employees_Department
ON Employees (department);

/* 9.Execution Plan
Analyze:
SELECT *
FROM Employees
WHERE department = 'IT';
Students should identify the major operators in the execution plan.*/
SELECT *
FROM Employees
WHERE department = 'IT';

/* 10.Transaction
Perform an update inside:
BEGIN TRANSACTION
Then test both:
COMMIT
and:
ROLLBACK.*/
BEGIN TRANSACTION;

UPDATE Employees
SET salary = 150000
WHERE employee_id = 1;

SELECT employee_id, employee_name, salary
FROM Employees
WHERE employee_id = 1;

ROLLBACK;

SELECT employee_id, employee_name, salary
FROM Employees
WHERE employee_id = 1;




/*      EASY FOR REMEMBER
CASE
→ Apply conditions

SET OPERATORS
→ Combine/compare result sets

PIVOT
→ Rows → Columns

UNPIVOT
→ Columns → Rows

VIEWS
→ Save reusable query logic

TEMP TABLES
→ Store intermediate results

STORED PROCEDURES
→ Create reusable SQL programs

INDEXES
→ Improve data access

QUERY OPTIMIZATION
→ Make queries more efficient

EXECUTION PLANS
→ Understand how SQL Server executes queries

TRANSACTIONS
→ Safely manage multiple related operations.
*/