                                        /* leacture 7 */
create database heli;
use heli;
CREATE TABLE Employees33(
    employee_id INT,
    employee_name VARCHAR(100),
    email VARCHAR(100),
    department VARCHAR(50),
    city VARCHAR(50)
);
INSERT INTO Employees33
VALUES
(101, 'Rahul Sharma', 'rahul.sharma@gmail.com', 'IT', 'Ahmedabad'),
(102, 'Priya Patel', 'priya.patel@gmail.com', 'HR', 'Mumbai'),
(103, 'Amit Shah', 'amit.shah@gmail.com', 'Finance', 'Ahmedabad'),
(104, 'Neha Mehta', 'neha.mehta@gmail.com', 'IT', 'Pune'),
(105, 'Rohan Desai', 'rohan.desai@gmail.com', 'Sales', 'Delhi');

SELECT employee_id,
UPPER(city) AS city FROM Employees33;

SELECT LOWER(email) AS email FROM Employees33;

SELECT employee_name,
LEN(employee_name) AS name_length FROM Employees33;

SELECT employee_name,
LEN(employee_name) AS Character_Count,
DATALENGTH(employee_name) AS Byte_Count FROM Employees33;

SELECT CONCAT(employee_id,' | ',employee_name,' | ',department) AS Employee_Details FROM Employees33;

SELECT CONCAT_WS(' - ', employee_name, department, city) AS Employee_Info FROM Employees33;

SELECT city, LEFT(city, 3) AS City_Code FROM Employees33;

SELECT employee_name, RIGHT(employee_name, 5) AS Last_Five_Characters FROM Employees33;

SELECT SUBSTRING(employee_name, 1, 5) AS Extracted_Text FROM Employees33;

SELECT employee_name,CHARINDEX(' ', employee_name) AS Space_Position FROM Employees33;

SELECT employee_name,PATINDEX('%a%', employee_name) AS Position FROM Employees33;

SELECT REPLACE(employee_name, ' ', '_') AS Employee_Name FROM Employees33;

SELECT TRANSLATE('123-456-789', '-', '/');

SELECT TRIM('   Rahul Sharma   ');

SELECT LTRIM('     Rahul');

SELECT RTRIM('Rahul     ');

SELECT LTRIM(RTRIM(employee_name))FROM Employees33;

SELECT REVERSE(employee_name) AS Reversed_Name FROM Employees33;

SELECT CONCAT('Hello', SPACE(5), 'World');

SELECT CONCAT(employee_name, REPLICATE('.', 5)) AS Formatted_Name FROM Employees33;

SELECT FORMAT(1234567, 'N0') AS Formatted_Number;

SELECT
    department,
    STRING_AGG(employee_name,' , ') AS Employees
FROM Employees33
GROUP BY department;

SELECT value FROM STRING_SPLIT('SQL,Python,Power BI,Excel', ',');

SELECT ASCII('A');

SELECT CHAR(48);

SELECT UNICODE('A');

SELECT NCHAR(65);

SELECT DIFFERENCE('CAT','DOG'); 

SELECT
    SOUNDEX('Smith') AS Name1,
    SOUNDEX('Smyth') AS Name2;

SELECT QUOTENAME('Employees');

SELECT STR(123.45, 10,2);

SELECT STRING_ESCAPE('Rahul Sharma', 'JSON');

SELECT
    UPPER(TRIM(employee_name)) AS Clean_Name
FROM Employees33;

SELECT CONCAT('Rahul', NULL, 'Sharma');

SELECT
    LEFT(
        employee_name,
        CHARINDEX(' ', employee_name) 
    ) AS First_Name
FROM Employees33;

SELECT
    RIGHT(
        employee_name,
        LEN(employee_name) - CHARINDEX(' ', employee_name)
    ) AS Last_Name
FROM Employees33;

SELECT
    LOWER(REPLACE(employee_name, ' ', '.')) AS Username
FROM Employees33;

SELECT
    LEFT(
        email,
        CHARINDEX('@', email) - 1
    ) AS Email_Username
FROM Employees33;

SELECT
    SUBSTRING(
        email,
        CHARINDEX('@', email) + 1,
        LEN(email)
    ) AS Email_Domain
FROM Employees33;

SELECT *
FROM Employees33
WHERE CHARINDEX('@gmail.com', email) > 0;

