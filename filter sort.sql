                               /* lecture 1*/

create database employe1;

use employe1;

CREATE TABLE Employees (
    ID INT,
    Name VARCHAR(50),
    Department VARCHAR(50),
    Salary INT,
    Age INT
);

INSERT INTO Employees VALUES
(1, 'Amit', 'IT', 60000, 28),
(2, 'Sneha', 'HR', 45000, 25),
(3, 'Raj', 'Finance', 70000, 32),
(4, 'Simran', 'IT', 52000, 27),
(5, 'Karan', 'Marketing', 40000, 24);

SELECT * FROM Employees;

/*   1   */
SELECT * FROM Employees 
WHERE Salary > 40000;

/*   2   */
SELECT * FROM Employees 
WHERE Department = 'IT';

/*   3   */
SELECT * FROM Employees 
WHERE Age BETWEEN 25 AND 30;

/*   4   */
SELECT * FROM Employees 
WHERE Name LIKE 'S%';

/*   5   */
SELECT top 3 * FROM Employees;

/*   6   */
SELECT * FROM Employees
WHERE Department = 'HR';


/*1.Salary > 40000
2.Department IT
3.Age between 25-30
4.Name starts with S
5.Top 3 salaries
6.NOT HR*/
