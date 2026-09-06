                                    /* lecture 6 */ 
create database jointask;

use jointask;

CREATE TABLE Customers2(
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(100),
    city VARCHAR(50)
);

INSERT INTO Customers2 VALUES
(101, 'Aarav Shah', 'Ahmedabad'),
(102, 'Riya Patel', 'Mumbai'),
(103, 'Rahul Mehta', 'Delhi'),
(104, 'Priya Sharma', 'Ahmedabad'),
(105, 'Karan Desai', 'Pune'),
(106, 'Neha Joshi', 'Mumbai'),
(107, 'Arjun Patel', 'Bangalore'),
(108, 'Sneha Shah', 'Delhi'),
(109, 'Vivek Mehta', 'Ahmedabad'),
(110, 'Anjali Desai', 'Surat'),
(111, 'Rohan Shah', 'Pune'),
(112, 'Meera Patel', 'Mumbai'),
(113, 'Dhruv Shah', 'Ahmedabad'),
(114, 'Kavya Mehta', 'Delhi'),
(115, 'Yash Desai', 'Bangalore'),
(116, 'Ishita Patel', 'Surat'),
(117, 'Manav Shah', 'Pune'),
(118, 'Pooja Joshi', 'Mumbai'),
(119, 'Nikhil Mehta', 'Ahmedabad'),
(120, 'Tanya Shah', 'Delhi');


CREATE TABLE Orders2 (
    order_id INT PRIMARY KEY,
    customer_id INT,
    product_name VARCHAR(100),
    quantity INT,
    amount DECIMAL(10,2)
);

INSERT INTO Orders2 VALUES
(1001, 101, 'Laptop', 2, 55000),
(1002, 101, 'Mouse', 5, 800),
(1003, 101, 'Keyboard', 3, 1500),
(1004, 102, 'Laptop', 1, 62000),
(1005, 102, 'Monitor', 2, 18000),
(1006, 103, 'Mobile Phone', 2, 35000),
(1007, 103, 'Headphones', 4, 4500),
(1008, 104, 'Laptop', 1, 58000),
(1009, 104, 'Printer', 2, 12500),
(1010, 104, 'Keyboard', 5, 1400),
(1011, 105, 'Office Chair', 4, 8500),
(1012, 105, 'Monitor', 3, 17000),
(1013, 106, 'Mobile Phone', 3, 32000),
(1014, 106, 'Headphones', 5, 4200),
(1015, 107, 'Laptop', 2, 60000),
(1016, 107, 'Mouse', 10, 750),
(1017, 108, 'Monitor', 4, 16000),
(1018, 108, 'Keyboard', 6, 1300),
(1019, 109, 'Laptop', 2, 57000),
(1020, 109, 'Printer', 3, 13500),
(1021, 109, 'Mouse', 8, 700),
(1022, 110, 'Mobile Phone', 2, 36000),
(1023, 110, 'Headphones', 3, 4800),
(1024, 111, 'Laptop', 1, 65000),
(1025, 111, 'Monitor', 2, 19000),
(1026, 112, 'Printer', 4, 12000),
(1027, 112, 'Keyboard', 7, 1200),
(1028, 113, 'Laptop', 3, 54000),
(1029, 113, 'Mouse', 6, 850),
(1030, 113, 'Headphones', 4, 5000),
(1031, 114, 'Mobile Phone', 2, 34000),
(1032, 114, 'Monitor', 3, 17500),
(1033, 115, 'Laptop', 2, 59000),
(1034, 115, 'Printer', 2, 14000),
(1035, 116, 'Office Chair', 5, 9000),
(1036, 117, 'Laptop', 1, 61000),
(1037, 117, 'Keyboard', 8, 1250),
(1038, 118, 'Mobile Phone', 3, 33000),
(1039, 118, 'Headphones', 6, 4300),
(1040, 119, 'Laptop', 2, 56000),
(1041, 119, 'Monitor', 2, 18500),
(1042, 119, 'Printer', 1, 15000),
(1043, 121, 'Laptop', 1, 60000),
(1044, 122, 'Monitor', 2, 17000);


CREATE TABLE Products2 (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100),
    category VARCHAR(50),
    price DECIMAL(10,2)
);

INSERT INTO Products2 VALUES
(201, 'Laptop', 'Electronics', 60000),
(202, 'Mobile Phone', 'Electronics', 35000),
(203, 'Monitor', 'Electronics', 18000),
(204, 'Printer', 'Electronics', 14000),
(205, 'Keyboard', 'Accessories', 1500),
(206, 'Mouse', 'Accessories', 800),
(207, 'Headphones', 'Accessories', 4500),
(208, 'Office Chair', 'Furniture', 9000),
(209, 'Webcam', 'Accessories', 3500),
(210, 'Tablet', 'Electronics', 28000),
(211, 'Desk', 'Furniture', 15000),
(212, 'USB Hub', 'Accessories', 1200);


CREATE TABLE Departments2(
    department_id INT PRIMARY KEY,
    department_name VARCHAR(100)
);


INSERT INTO Departments2 VALUES
(1, 'Sales'),
(2, 'Marketing'),
(3, 'Finance'),
(4, 'Human Resources'),
(5, 'IT'),
(6, 'Operations'),
(7, 'Customer Support');


CREATE TABLE Employees2 (
    employee_id INT PRIMARY KEY,
    employee_name VARCHAR(100),
    department_id INT,
    designation VARCHAR(100),
    salary DECIMAL(10,2)
);


INSERT INTO Employees2 VALUES
(301, 'Amit Shah', 1, 'Sales Executive', 45000),
(302, 'Bhavna Patel', 1, 'Sales Executive', 48000),
(303, 'Chirag Mehta', 1, 'Sales Manager', 75000),
(304, 'Disha Sharma', 2, 'Marketing Executive', 50000),
(305, 'Esha Desai', 2, 'Marketing Manager', 78000),
(306, 'Farhan Khan', 3, 'Financial Analyst', 65000),
(307, 'Gauri Joshi', 3, 'Finance Manager', 90000),
(308, 'Harsh Patel', 4, 'HR Executive', 48000),
(309, 'Isha Shah', 5, 'Software Engineer', 70000),
(310, 'Jay Mehta', 5, 'System Administrator', 68000),
(311, 'Kriti Desai', 6, 'Operations Executive', 52000),
(312, 'Lalit Shah', NULL, 'Sales Executive', 46000);

select * from Customers2;
select * from Orders2;
select * from Departments2;
select * from Products2;
select * from Employees2;

/* 1.The Finance team wants to identify customers contributing significantly to company revenue.
Prepare a customer revenue report containing:
Customer ID
Customer Name
City
Total Number of Orders
Total Quantity Purchased
Total Purchase Value
Average Order Value
Only customers with at least 3 orders and total purchase value above ₹75,000 should be included.
Sort the report by total purchase value from highest to lowest.*/
SELECT 
    Customers2.customer_id,
    Customers2.customer_name,
    Customers2.city,
    COUNT(DISTINCT Orders2.order_id) AS total_number_of_orders,
    SUM(Orders2.quantity) AS total_quantity_purchased,
    SUM(Orders2.amount) AS total_purchase_value,
    AVG(Orders2.amount) AS average_order_value
FROM Customers2
INNER JOIN Orders2
    ON Customers2.customer_id = Orders2.customer_id
GROUP BY 
    Customers2.customer_id,
    Customers2.customer_name,
    Customers2.city
HAVING 
    COUNT(Orders2.order_id) >= 3
    AND SUM(Orders2.amount) > 75000
ORDER BY 
    total_purchase_value DESC;

/* 2.The Business Intelligence team wants to compare sales performance across customer locations.
Generate a city-level sales report containing:
City
Number of Customers
Number of Orders
Total Quantity Sold
Total Sales Value
Average Order Value
Only cities generating more than ₹1,00,000 in sales should appear.
Sort the report by sales value descending.*/
select 
Customers2.city,
COUNT(DISTINCT Orders2.order_id) AS total_number_of_orders,
COUNT(DISTINCT Customers2.customer_id) AS total_number_of_Customers,
SUM(Orders2.quantity) AS total_quantity_sold,
SUM(Orders2.amount) AS total_sales_value,
AVG(Orders2.amount) AS average_order_value
from Customers2
inner join Orders2
ON Customers2.customer_id = Orders2.customer_id
GROUP BY
Customers2.city
HAVING 
sum(orders2.amount) > 100000
ORDER BY 
    total_sales_value DESC;

/* 3.The Customer Success team wants to identify customers responsible for high-value transactions.
Find customers who have:
At least one order with a transaction value above ₹25,000
Total purchase value above ₹50,000
Display:
Customer ID
Customer Name
City
Number of Orders
Total Purchase Value
Highest Transaction Value
Task */
SELECT 
Customers2.customer_id,
Customers2.customer_name,
Customers2.city,
COUNT(DISTINCT Orders2.order_id) AS total_number_of_orders,
SUM(Orders2.amount) AS total_purchase_value,
MAX(Orders2.amount) AS Highest_Transaction_Value
FROM Customers2
INNER JOIN Orders2
ON Customers2.customer_id = Orders2.customer_id
GROUP BY
    Customers2.customer_id,
    Customers2.customer_name,
    Customers2.city
HAVING
    MAX(Orders2.amount) > 25000
    AND SUM(Orders2.amount) > 50000;

/* 4.Management wants to identify customers with frequent purchasing activity.
Generate a report showing customers who have placed more than 4 orders.
Display:
Customer ID
Customer Name
City
Number of Orders
Total Quantity Purchased
Total Purchase Value
Average Order Value
Sort by order count and then total purchase value.*/
SELECT
    Customers2.customer_id,
    Customers2.customer_name,
    Customers2.city,
    COUNT(Orders2.order_id) AS number_of_orders,
    SUM(Orders2.quantity) AS total_quantity_purchased,
    SUM(Orders2.amount) AS total_purchase_value,
    AVG(Orders2.amount) AS average_order_value
FROM Customers2
INNER JOIN Orders2
    ON Customers2.customer_id = Orders2.customer_id
GROUP BY
    Customers2.customer_id,
    Customers2.customer_name,
    Customers2.city
HAVING
    COUNT(Orders2.order_id) > 4
ORDER BY
    number_of_orders DESC,
    total_purchase_value DESC;

/* 5.The Product Analytics team wants to understand which products are generating the largest commercial contribution.
Generate a product performance report containing:
Product Name
Number of Orders
Total Quantity Sold
Total Revenue
Average Order Amount
Highest Order Amount
Only products with at least 3 orders should be included.
Sort by total revenue descending.*/
SELECT
    Orders2.product_name,
    COUNT(Orders2.order_id) AS number_of_orders,
    SUM(Orders2.quantity) AS total_quantity_sold,
    SUM(Orders2.amount) AS total_revenue,
    AVG(Orders2.amount) AS average_order_amount,
    MAX(Orders2.amount) AS highest_order_amount
FROM Orders2
GROUP BY
    Orders2.product_name
HAVING
    COUNT(Orders2.order_id) >= 3
ORDER BY
    total_revenue DESC;

/* 6.The Operations team wants to identify products with consistently high sales volume.
Identify products where:
Total quantity sold is greater than 100
Number of orders is greater than 5
Display:
Product Name
Total Quantity Sold
Number of Orders
Total Revenue.*/
SELECT
    Orders2.product_name,
    SUM(Orders2.quantity) AS total_quantity_sold,
    COUNT(Orders2.order_id) AS number_of_orders,
    SUM(Orders2.amount) AS total_revenue
FROM Orders2
GROUP BY
    Orders2.product_name
HAVING
    SUM(Orders2.quantity) > 100
    AND COUNT(Orders2.order_id) > 5;

/* 7.Senior management wants to identify the strongest revenue-generating markets.
For every city, calculate:
Total Customers
Total Orders
Total Quantity Sold
Total Revenue
Display only cities with:
At least 3 customers
At least 5 orders
Revenue above ₹2,00,000.*/
SELECT
    Customers2.city,
    COUNT(DISTINCT Customers2.customer_id) AS total_customers,
    COUNT(Orders2.order_id) AS total_orders,
    SUM(Orders2.quantity) AS total_quantity_sold,
    SUM(Orders2.amount) AS total_revenue
FROM Customers2
INNER JOIN Orders2
    ON Customers2.customer_id = Orders2.customer_id
GROUP BY
    Customers2.city
HAVING
    COUNT(DISTINCT Customers2.customer_id) >= 3
    AND COUNT(Orders2.order_id) >= 5
    AND SUM(Orders2.amount) > 200000;

/* 8.The Finance team wants to analyze the order-value behavior of customers.
Generate a report containing:
Customer ID
Customer Name
City
Number of Orders
Minimum Order Value
Maximum Order Value
Average Order Value
Total Purchase Value
Only customers with at least 3 orders should be included.*/
SELECT
    Customers2.customer_id,
    Customers2.customer_name,
    Customers2.city,
    COUNT(Orders2.order_id) AS number_of_orders,
    MIN(Orders2.amount) AS minimum_order_value,
    MAX(Orders2.amount) AS maximum_order_value,
    AVG(Orders2.amount) AS average_order_value,
    SUM(Orders2.amount) AS total_purchase_value
FROM Customers2
INNER JOIN Orders2
    ON Customers2.customer_id = Orders2.customer_id
GROUP BY
    Customers2.customer_id,
    Customers2.customer_name,
    Customers2.city
HAVING
    COUNT(Orders2.order_id) >= 3;

/* 9.The CRM team wants to identify customers who are actively purchasing from the company.
Generate a report for customers who have placed at least 5 orders.
Display:
Customer ID
Customer Name
City
Number of Orders
Total Quantity Purchased
Total Purchase Value
Sort customers by number of orders descending.*/
SELECT
    Customers2.customer_id,
    Customers2.customer_name,
    Customers2.city,
    COUNT(Orders2.order_id) AS number_of_orders,
    SUM(Orders2.quantity) AS total_quantity_purchased,
    SUM(Orders2.amount) AS total_purchase_value
FROM Customers2
INNER JOIN Orders2
    ON Customers2.customer_id = Orders2.customer_id
GROUP BY
    Customers2.customer_id,
    Customers2.customer_name,
    Customers2.city
HAVING
    COUNT(Orders2.order_id) >= 5
ORDER BY
    number_of_orders DESC;

/* 10.The business team wants to identify customers with limited purchasing activity.
Find customers who have placed 1 or 2 orders only.
Display:
Customer ID
Customer Name
City
Number of Orders
Total Purchase Value
Sort by total purchase value descending.*/
SELECT
    Customers2.customer_id,
    Customers2.customer_name,
    Customers2.city,
    COUNT(Orders2.order_id) AS number_of_orders,
    SUM(Orders2.amount) AS total_purchase_value
FROM Customers2
INNER JOIN Orders2
    ON Customers2.customer_id = Orders2.customer_id
GROUP BY
    Customers2.customer_id,
    Customers2.customer_name,
    Customers2.city
HAVING
    COUNT(Orders2.order_id) BETWEEN 1 AND 2
ORDER BY
    total_purchase_value DESC;

/* 11.
The CRM department wants a complete customer coverage report.
Include every customer, regardless of whether they have placed an order.
Display:
Customer ID
Customer Name
City
Number of Orders
Total Quantity Purchased
Total Purchase Value
Customers with no purchases must still be represented in the report.*/
SELECT
    Customers2.customer_id,
    Customers2.customer_name,
    Customers2.city,
    COUNT(Orders2.order_id) AS number_of_orders,
    COALESCE(SUM(Orders2.quantity), 0) AS total_quantity_purchased,
    COALESCE(SUM(Orders2.amount), 0) AS total_purchase_value
FROM Customers2
LEFT JOIN Orders2
    ON Customers2.customer_id = Orders2.customer_id
GROUP BY
    Customers2.customer_id,
    Customers2.customer_name,
    Customers2.city;

/* 12.The Marketing team wants a list of registered customers who have never generated an order.
Prepare a report containing:
Customer ID
Customer Name
City
The result should represent only customers with zero purchasing activity.*/
SELECT
    Customers2.customer_id,
    Customers2.customer_name,
    Customers2.city
FROM Customers2
LEFT JOIN Orders2
    ON Customers2.customer_id = Orders2.customer_id
WHERE
    Orders2.order_id IS NULL;

/* 13.The Finance team wants to compare the complete customer base with purchasing activity.
Generate a report containing every customer and their:
Customer ID
Customer Name
City
Number of Orders
Total Purchase Value
The report must preserve customers who have no order history.*/
SELECT
    Customers2.customer_id,
    Customers2.customer_name,
    Customers2.city,
    COUNT(Orders2.order_id) AS number_of_orders,
    COALESCE(SUM(Orders2.amount), 0) AS total_purchase_value
FROM Customers2
LEFT JOIN Orders2
    ON Customers2.customer_id = Orders2.customer_id
GROUP BY
    Customers2.customer_id,
    Customers2.customer_name,
    Customers2.city;

/* 14.The Product team wants to identify products that are present in the company's product catalog but have no sales activity.
Generate a report containing:
Product ID
Product Name
Category
Price
Only products with **zero order activity** should be returned.*/
SELECT
    Products2.product_id,
    Products2.product_name,
    Products2.category,
    Products2.price
FROM Products2
LEFT JOIN Orders2
    ON Products2.product_name = Orders2.product_name
WHERE
    Orders2.order_id IS NULL;

/* 15.The Data Quality team wants to identify inconsistencies between customer master data and order transaction data.
Prepare a reconciliation report containing:
Customer ID
Customer Name
City
Order ID
Product Name
Quantity
Amount
The report must preserve records from both datasets, including unmatched records.*/
SELECT
    Customers2.customer_id,
    Customers2.customer_name,
    Customers2.city,
    Orders2.order_id,
    Orders2.product_name,
    Orders2.quantity,
    Orders2.amount
FROM Customers2
FULL JOIN Orders2
    ON Customers2.customer_id = Orders2.customer_id;

/* 16.The company is performing a data-quality audit between customer and order records.
Identify all records where customer information and order information do not have a matching relationship.
Display:
Customer ID
Customer Name
Order ID
Product Name
Amount.*/
SELECT
    Customers2.customer_id,
    Customers2.customer_name,
    Orders2.order_id,
    Orders2.product_name,
    Orders2.amount
FROM Customers2
RIGHT JOIN Orders2
    ON Customers2.customer_id = Orders2.customer_id
WHERE Customers2.customer_id IS NULL;

/* 17.Generate a complete reconciliation dataset containing:
Customer ID
Customer Name
City
Order ID
Product Name
Quantity
Amount
Transaction Value
All records from both customer and order datasets must be retained.*/
SELECT
    Customers2.customer_id,
    Customers2.customer_name,
    Customers2.city,
    Orders2.order_id,
    Orders2.product_name,
    Orders2.quantity,
    Orders2.amount,
    Orders2.amount AS transaction_value
FROM Customers2
FULL JOIN Orders2
    ON Customers2.customer_id = Orders2.customer_id;

/* 18.The Marketing department wants to identify customers who have registered with the company but have generated no transactions.
Display:
Customer ID
Customer Name
City.*/
SELECT
    Customers2.customer_id,
    Customers2.customer_name,
    Customers2.city
FROM Customers2
LEFT JOIN Orders2
    ON Customers2.customer_id = Orders2.customer_id
WHERE Orders2.order_id IS NULL;

/* 19.The Product Management team wants to identify products that are currently available in the catalog but have never been purchased.
Display:
Product ID
Product Name
Category
Price.*/
SELECT
    Products2.product_id,
    Products2.product_name,
    Products2.category,
    Products2.price
FROM Products2
LEFT JOIN Orders2
    ON Products2.product_name = Orders2.product_name
WHERE Orders2.order_id IS NULL;

/* 20.The Growth team wants to identify customers who have not converted into paying customers.
Return all customers with no corresponding order records.
Display:
Customer ID
Customer Name
City.*/
SELECT
    Customers2.customer_id,
    Customers2.customer_name,
    Customers2.city
FROM Customers2
LEFT JOIN Orders2
    ON Customers2.customer_id = Orders2.customer_id
WHERE Orders2.order_id IS NULL;

/* 21.The Inventory team wants to identify products that have never appeared in a transaction.
Display:
Product ID
Product Name
Category
Price
Sort by price from highest to lowest.*/
SELECT
    Products2.product_id,
    Products2.product_name,
    Products2.category,
    Products2.price
FROM Products2
LEFT JOIN Orders2
    ON Products2.product_name = Orders2.product_name
WHERE Orders2.order_id IS NULL
ORDER BY
    Products2.price DESC;

/* 22.The Marketing Analytics team is preparing a personalized campaign.
Create a dataset representing every possible customer-product combination.
Display:
Customer ID
Customer Name
City
Product ID
Product Name
Category.*/
SELECT
    Customers2.customer_id,
    Customers2.customer_name,
    Customers2.city,
    Products2.product_id,
    Products2.product_name,
    Products2.category
FROM Customers2
CROSS JOIN Products2;

/* 23.The Marketing department wants to know the 
theoretical size of a campaign where every customer 
could receive an offer for every product.
Calculate the total number of possible:
Customer × Product combinations
Return the result as a single value.*/
SELECT
    COUNT(*) AS total_customer_product_combinations
FROM Customers2
CROSS JOIN Products2;

/* 24.Create every possible combination of:
Customer City
Product Name
Display the complete opportunity matrix.
The result should contain every possible city-product 
combination, regardless of whether a customer from that 
city has purchased the product.*/
SELECT DISTINCT
    Customers2.city,
    Products2.product_name
FROM Customers2
CROSS JOIN Products2
ORDER BY
    Customers2.city,
    Products2.product_name;

/* 25.Management wants a customer performance dataset for the monthly business review.
Generate:
Customer ID
Customer Name
City
Number of Orders
Total Quantity Purchased
Total Revenue
Average Order Value
Maximum Order Value
Only customers with at least 3 orders should be included.
Sort the output by:
Total Revenue
Number of Orders
Average Order Value
All in descending order.*/
SELECT
    Customers2.customer_id,
    Customers2.customer_name,
    Customers2.city,
    COUNT(Orders2.order_id) AS number_of_orders,
    SUM(Orders2.quantity) AS total_quantity_purchased,
    SUM(Orders2.amount) AS total_revenue,
    AVG(Orders2.amount) AS average_order_value,
    MAX(Orders2.amount) AS maximum_order_value
FROM Customers2
INNER JOIN Orders2
    ON Customers2.customer_id = Orders2.customer_id
GROUP BY
    Customers2.customer_id,
    Customers2.customer_name,
    Customers2.city
HAVING
    COUNT(Orders2.order_id) >= 3
ORDER BY
    total_revenue DESC,
    number_of_orders DESC,
    average_order_value DESC;

/* 26.The Product Management team is conducting a quarterly product review.
Generate:
Product Name
Number of Orders
Total Quantity Sold
Total Revenue
Average Order Value
Maximum Order Value
Only products with at least 5 orders and total revenue above ₹2,00,000 
should be included.*/
SELECT
    Orders2.product_name,
    COUNT(Orders2.order_id) AS number_of_orders,
    SUM(Orders2.quantity) AS total_quantity_sold,
    SUM(Orders2.amount) AS total_revenue,
    AVG(Orders2.amount) AS average_order_value,
    MAX(Orders2.amount) AS maximum_order_value
FROM Orders2
GROUP BY
    Orders2.product_name
HAVING
    COUNT(Orders2.order_id) >= 5
    AND SUM(Orders2.amount) > 200000;

/* 27.The Sales Strategy team wants to identify markets with strong customer engagement and revenue generation.
Generate a city-level report containing:
City
Number of Customers
Number of Orders
Total Quantity Sold
Total Revenue
Average Order Value
Only cities satisfying all of the following should appear:
At least 5 customers
More than 10 orders
Revenue greater than ₹5,00,000.*/
SELECT
    Customers2.city,
    COUNT(DISTINCT Customers2.customer_id) AS number_of_customers,
    COUNT(Orders2.order_id) AS number_of_orders,
    SUM(Orders2.quantity) AS total_quantity_sold,
    SUM(Orders2.amount) AS total_revenue,
    AVG(Orders2.amount) AS average_order_value
FROM Customers2
INNER JOIN Orders2
    ON Customers2.customer_id = Orders2.customer_id
GROUP BY
    Customers2.city
HAVING
    COUNT(DISTINCT Customers2.customer_id) >= 5
    AND COUNT(Orders2.order_id) > 10
    AND SUM(Orders2.amount) > 500000;

/* 28.The Finance team wants to investigate customers responsible
for high-value business.
Identify customers whose transaction history contains at least 2 
orders with transaction value greater than ₹25,000.
Display:
Customer ID
Customer Name
City
Number of qualifying orders
Total value of qualifying orders.*/
SELECT
    Customers2.customer_id,
    Customers2.customer_name,
    Customers2.city,
    COUNT(Orders2.order_id) AS number_of_qualifying_orders,
    SUM(Orders2.amount) AS total_value_of_qualifying_orders
FROM Customers2
INNER JOIN Orders2
    ON Customers2.customer_id = Orders2.customer_id
WHERE
    Orders2.amount > 25000
GROUP BY
    Customers2.customer_id,
    Customers2.customer_name,
    Customers2.city
HAVING
    COUNT(Orders2.order_id) >= 2;

/* 29.The Supply Chain team wants to identify products with strong customer demand.
Find products where:
Total quantity sold is greater than 100
At least 5 separate orders exist
Total revenue exceeds ₹1,00,000
Display:
Product Name
Number of Orders
Total Quantity Sold
Total Revenue
Average Order Value.*/
SELECT
    Orders2.product_name,
    COUNT(Orders2.order_id) AS number_of_orders,
    SUM(Orders2.quantity) AS total_quantity_sold,
    SUM(Orders2.amount) AS total_revenue,
    AVG(Orders2.amount) AS average_order_value
FROM Orders2
GROUP BY
    Orders2.product_name
HAVING
    SUM(Orders2.quantity) > 100
    AND COUNT(Orders2.order_id) >= 5
    AND SUM(Orders2.amount) > 100000;

/* 30.The executive team wants a high-level customer sales 
report for a management dashboard.
Generate a customer-level dataset containing:
Customer ID
Customer Name
City
Number of Orders
Total Quantity Purchased
Total Purchase Value
Average Order Value
Minimum Order Value
Maximum Order Value
Only customers meeting both conditions should be included:
At least 3 orders
Total purchase value greater than ₹1,00,000
Sort the final report by Total Purchase Value descending.*/
SELECT
    Customers2.customer_id,
    Customers2.customer_name,
    Customers2.city,
    COUNT(Orders2.order_id) AS number_of_orders,
    SUM(Orders2.quantity) AS total_quantity_purchased,
    SUM(Orders2.amount) AS total_purchase_value,
    AVG(Orders2.amount) AS average_order_value,
    MIN(Orders2.amount) AS minimum_order_value,
    MAX(Orders2.amount) AS maximum_order_value
FROM Customers2
INNER JOIN Orders2
    ON Customers2.customer_id = Orders2.customer_id
GROUP BY
    Customers2.customer_id,
    Customers2.customer_name,
    Customers2.city
HAVING
    COUNT(Orders2.order_id) >= 3
    AND SUM(Orders2.amount) > 100000
ORDER BY
    total_purchase_value DESC;














