							/* LECTURE 10 */
CREATE DATABASE CTE;

USE CTE;

CREATE TABLE Employees
(
    employee_id INT PRIMARY KEY,
    employee_name VARCHAR(50) NOT NULL,
    department VARCHAR(50) NOT NULL,
    city VARCHAR(50),
    salary DECIMAL(10,2),
    joining_date DATE,
    manager_id INT NULL
);

INSERT INTO Employees
(employee_id, employee_name, department, city, salary, joining_date, manager_id)
VALUES
(1, 'Amit', 'IT', 'Ahmedabad', 65000, '2021-01-15', NULL),
(2, 'Rahul', 'IT', 'Mumbai', 85000, '2020-06-10', 1),
(3, 'Karan', 'IT', 'Pune', 85000, '2021-11-22', 2),
(4, 'Anjali', 'IT', 'Delhi', 70000, '2023-05-25', 2),
(5, 'Priya', 'HR', 'Delhi', 55000, '2022-03-20', NULL),
(6, 'Neha', 'HR', 'Ahmedabad', 75000, '2021-08-12', 5),
(7, 'Sneha', 'HR', 'Pune', 60000, '2023-02-15', 5),
(8, 'Vikas', 'Finance', 'Mumbai', 90000, '2019-04-18', NULL),
(9, 'Pooja', 'Finance', 'Delhi', 70000, '2022-01-05', 8),
(10, 'Rohit', 'Finance', 'Ahmedabad', 90000, '2020-09-10', 8),
(11, 'Mehul', 'Sales', 'Ahmedabad', 62000, '2022-07-11', NULL),
(12, 'Nisha', 'Sales', 'Mumbai', 78000, '2021-12-01', 11),
(13, 'Ravi', 'Sales', 'Delhi', 68000, '2023-03-19', 11),
(14, 'Komal', 'Marketing', 'Pune', 72000, '2020-10-21', NULL),
(15, 'Tina', 'Marketing', 'Ahmedabad', 82000, '2022-06-13', 14);

CREATE TABLE Orders
(
    order_id INT PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    product_id INT,
    category VARCHAR(50),
    sales_amount DECIMAL(12,2),
    quantity INT,
    order_status VARCHAR(30)
);

INSERT INTO Orders
(order_id, customer_id, order_date, product_id, category, sales_amount, quantity, order_status)
VALUES
(1001, 101, '2026-01-05', 1, 'Laptop', 75000, 1, 'Completed'),
(1002, 102, '2026-01-08', 2, 'Mobile', 30000, 1, 'Completed'),
(1003, 101, '2026-01-15', 3, 'Monitor', 18000, 2, 'Completed'),
(1004, 103, '2026-01-20', 1, 'Laptop', 80000, 1, 'Completed'),
(1005, 104, '2026-02-02', 4, 'Keyboard', 5000, 2, 'Completed'),
(1006, 102, '2026-02-10', 5, 'Tablet', 25000, 1, 'Completed'),
(1007, 105, '2026-02-14', 1, 'Laptop', 90000, 1, 'Completed'),
(1008, 101, '2026-02-20', 6, 'Mouse', 2500, 2, 'Completed'),
(1009, 103, '2026-03-03', 2, 'Mobile', 35000, 1, 'Completed'),
(1010, 106, '2026-03-10', 3, 'Monitor', 22000, 1, 'Completed'),
(1011, 104, '2026-03-17', 1, 'Laptop', 70000, 1, 'Completed'),
(1012, 105, '2026-03-21', 5, 'Tablet', 28000, 1, 'Completed'),
(1013, 102, '2026-04-04', 2, 'Mobile', 32000, 1, 'Completed'),
(1014, 106, '2026-04-12', 1, 'Laptop', 85000, 1, 'Completed'),
(1015, 107, '2026-04-18', 4, 'Keyboard', 7000, 2, 'Completed'),
(1016, 101, '2026-05-01', 3, 'Monitor', 20000, 1, 'Completed'),
(1017, 103, '2026-05-08', 1, 'Laptop', 95000, 1, 'Completed'),
(1018, 108, '2026-05-15', 5, 'Tablet', 30000, 1, 'Completed'),
(1019, 105, '2026-06-02', 2, 'Mobile', 36000, 1, 'Completed'),
(1020, 107, '2026-06-11', 6, 'Mouse', 3500, 3, 'Completed');

/* 1.Create a CTE that returns all employees.*/
