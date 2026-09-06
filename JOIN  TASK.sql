										/* lecture 5 */
Create DATABASE JoinPracticeDB;

USE JoinPracticeDB;

CREATE TABLE Customer1(
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(50) NOT NULL,
    city VARCHAR(50),
    country VARCHAR(50));

INSERT INTO Customer1 VALUES
(1, 'Rahul Sharma', 'Ahmedabad', 'India'),
(2, 'Priya Patel', 'Mumbai', 'India'),
(3, 'Amit Shah', 'Delhi', 'India'),
(4, 'Neha Mehta', 'Pune', 'India'),
(5, 'Rohan Desai', 'Surat', 'India'),
(6, 'Karan Joshi', 'Jaipur', 'India'),
(7, 'Sneha Patel', 'Bangalore', 'India'),
(8, 'Vikas Shah', 'Vadodara', 'India'),
(9, 'Anjali Singh', 'Delhi', 'India'),
(10, 'Raj Malhotra', 'Chennai', 'India');

CREATE TABLE Orders1(
    order_id INT PRIMARY KEY,
    customer_id INT,
    product_name VARCHAR(50),
    quantity INT,
    amount DECIMAL(10,2));

INSERT INTO Orders1 VALUES
(101, 1, 'Laptop', 1, 55000.00),
(102, 2, 'Mobile', 2, 30000.00),
(103, 3, 'Keyboard', 3, 4500.00),
(104, 4, 'Monitor', 1, 18000.00),
(105, 5, 'Mouse', 5, 2500.00),
(106, 6, 'Printer', 1, 12000.00),
(107, 7, 'Laptop Bag', 2, 3000.00),
(108, 11, 'Tablet', 1, 25000.00),
(109, 12, 'Headphones', 2, 6000.00),
(110, 13, 'Smart Watch', 1, 8000.00);

SELECT * FROM Customer1;

SELECT * FROM Orders1;

/* 1.Write a query to display:
Customer ID
Customer Name
City
Order ID
Product Name
Amount
Use an INNER JOIN. */
SELECT Customer1.customer_id,
    Customer1.customer_name,
    Customer1.city,
    Orders1.order_id,
    Orders1.product_name,
    Orders1.amount
FROM Customer1 
INNER JOIN Orders1 
ON Customer1.customer_id = Orders1.customer_id;

/* 2.Display all customers who have placed an order.
Show:
Customer Name
City
Product Name
Order Amount
Use INNER JOIN.*/
SELECT 
    Customer1.customer_name,
    Customer1.city,
    Orders1.product_name,
    Orders1.amount AS order_amount 
FROM Customer1 
INNER JOIN Orders1 
ON Customer1.customer_id = Orders1.customer_id;

/* 3.Display all customers, including customers who have not placed any orders.
Show:
Customer ID
Customer Name
Order ID
Product Name
Amount
Use LEFT JOIN.*/
SELECT 
    Customer1.customer_id,
    Customer1.customer_name,
    Orders1.order_id,
    Orders1.product_name,
    Orders1.amount
FROM Customer1 
LEFT JOIN Orders1 
ON Customer1.customer_id = Orders1.customer_id;

/* 4.Find all customers who have not placed any order.
Display:
Customer ID
Customer Name
City
Use LEFT JOIN.*/
SELECT 
    Customer1.customer_id,
    Customer1.customer_name,
    Customer1.city
FROM Customer1
LEFT JOIN Orders1 
ON Customer1.customer_id = Orders1.customer_id


/* 5.Display all orders, including orders whose customer does not exist in the Customers table.
Show:
Order ID
Customer ID
Customer Name
Product Name
Amount
Use RIGHT JOIN.*/
SELECT 
    Orders1.order_id,
    Orders1.customer_id,
    Customer1.customer_name,
    Orders1.product_name,
    Orders1.amount
FROM Customer1
RIGHT JOIN Orders1
ON Customer1.customer_id = Orders1.customer_id;

/* 6.Find all orders that do not have a matching customer.
Display:
Order ID
Customer ID
Product Name
Amount
Use RIGHT JOIN.*/
SELECT 
    Orders1.order_id,
    Orders1.customer_id,
    Orders1.product_name,
    Orders1.amount
FROM Customer1
RIGHT JOIN Orders1
ON Customer1.customer_id = Orders1.customer_id
WHERE Customer1.customer_id IS NULL;


/* 7.Use FULL OUTER JOIN to display all customers and
all orders, whether they have a match or not.
Display:
Customer ID
Customer Name
Order ID
Product Name
Amount.*/
SELECT 
    Customer1.customer_id,
    Customer1.customer_name,
    Orders1.order_id,
    Orders1.product_name,
    Orders1.amount
FROM Customer1
full JOIN Orders1
ON Customer1.customer_id = Orders1.customer_id;


/* 8.Find customers whose order amount is greater than 10000.
Display:
Customer Name
Order ID
Product Name
Amount
Use:
INNER JOIN
WHERE*/
SELECT 
    Customer1.customer_name,
    Orders1.order_id,
    Orders1.product_name,
    Orders1.amount
FROM Customer1
INNER JOIN Orders1
ON Customer1.customer_id = Orders1.customer_id
WHERE Orders1.amount > 10000;

/* 9.Find all orders placed by customers from Delhi.
Display:
Customer Name
City
Order ID
Product Name
Amount
Use INNER JOIN.*/
SELECT 
    Customer1.customer_name,
    Customer1.city,
    Orders1.order_id,
    Orders1.product_name,
    Orders1.amount
FROM Customer1
INNER JOIN Orders1
ON Customer1.customer_id = Orders1.customer_id
WHERE Customer1.city = 'Delhi';

/* 10.Find all customers who ordered a quantity greater than 2.
Display:
Customer Name
Product Name
Quantity
Amount
Sort the result by quantity in descending order.*/
SELECT 
    Customer1.customer_name,
    Orders1.product_name,
    Orders1.quantity,
    Orders1.amount
FROM Customer1
INNER JOIN Orders1
ON Customer1.customer_id = Orders1.customer_id
WHERE Orders1.quantity > 2
ORDER BY Orders1.quantity DESC;

/* 11.Calculate the total amount spent by every customer.
Display:
Customer ID
Customer Name
Total Amount
Customers who have not placed any orders should also appear.
Use:
LEFT JOIN
GROUP BY
SUM() */
SELECT 
    Customer1.customer_id,
    Customer1.customer_name,
    SUM(Orders1.amount) AS total_amount
FROM Customer1
LEFT JOIN Orders1
ON Customer1.customer_id = Orders1.customer_id
GROUP BY 
    Customer1.customer_id,
    Customer1.customer_name;

/* 12.Find the total number of orders placed by each customer.
Display:
Customer ID
Customer Name
Total Orders
Customers with no orders should also appear.
Use:
LEFT JOIN
GROUP BY
COUNT() */
SELECT 
    Customer1.customer_id,
    Customer1.customer_name,
    COUNT(Orders1.order_id) AS total_orders
FROM Customer1
LEFT JOIN Orders1
ON Customer1.customer_id = Orders1.customer_id
GROUP BY 
    Customer1.customer_id,
    Customer1.customer_name;

/* 13.Calculate the average order amount for each customer.
Display:
Customer Name
Average Order Amount
Only display customers who have placed at least one order.
Use:
INNER JOIN
GROUP BY
AVG() */
SELECT 
    Customer1.customer_name,
    AVG(Orders1.amount) AS average_order_amount
FROM Customer1
INNER JOIN Orders1
ON Customer1.customer_id = Orders1.customer_id
GROUP BY Customer1.customer_name;

/* 14.Find the customer who placed the order with the highest amount.
Display:
Customer Name
Order ID
Product Name
Amount */
SELECT top 2
    Customer1.customer_name,
    Orders1.order_id,
    Orders1.product_name,
    Orders1.amount
FROM Customer1
INNER JOIN Orders1
ON Customer1.customer_id = Orders1.customer_id
ORDER BY Orders1.amount DESC;

/* 15.Find the customer who placed the order with the lowest amount.
Display:
Customer Name
Order ID
Product Name
Amount */
SELECT top 1
    Customer1.customer_name,
    Orders1.order_id,
    Orders1.product_name,
    Orders1.amount
FROM Customer1
INNER JOIN Orders1
ON Customer1.customer_id = Orders1.customer_id
ORDER BY Orders1.amount ASC;

/* 16.Create a customer-wise summary containing:
Customer ID
Customer Name
Number of Orders
Total Quantity
Total Amount
Include customers who have no orders.
Use:
LEFT JOIN
GROUP BY
COUNT()
SUM() */
SELECT 
    Customer1.customer_id,
    Customer1.customer_name,
    COUNT(Orders1.order_id) AS number_of_orders,
    SUM(Orders1.quantity) AS total_quantity,
    SUM(Orders1.amount) AS total_amount
FROM Customer1
LEFT JOIN Orders1
ON Customer1.customer_id = Orders1.customer_id
GROUP BY 
    Customer1.customer_id,
    Customer1.customer_name;


/* 17.Calculate the total amount spent by each customer.
Display only customers whose total spending is greater than ₹20,000.
Use:
LEFT JOIN
GROUP BY
SUM()
HAVING */
SELECT 
    Customer1.customer_id,
    Customer1.customer_name,
    SUM(Orders1.amount) AS total_amount
FROM Customer1
LEFT JOIN Orders1
ON Customer1.customer_id = Orders1.customer_id
GROUP BY 
    Customer1.customer_id,
    Customer1.customer_name
HAVING SUM(Orders1.amount) > 20000;

/* 18.Find customers who have placed more than one order.
Display:
Customer ID
Customer Name
Number of Orders
Use:
JOIN
GROUP BY
COUNT()
HAVING */
SELECT 
    Customer1.customer_id,
    Customer1.customer_name,
    COUNT(Orders1.order_id) AS number_of_orders
FROM Customer1
INNER JOIN Orders1
ON Customer1.customer_id = Orders1.customer_id
GROUP BY 
    Customer1.customer_id,
    Customer1.customer_name
HAVING COUNT(Orders1.order_id) > 1;

/* 19.Using FULL OUTER JOIN, identify:
Customers who have orders
Customers who do not have orders
Orders whose customers do not exist
Display the appropriate customer and order information. */
SELECT 
    Customer1.customer_id,
    Customer1.customer_name,
    Orders1.order_id,
    Orders1.product_name,
    Orders1.amount,
    CASE
        WHEN Customer1.customer_id IS NOT NULL AND Orders1.order_id IS NOT NULL
            THEN 'Customer has Order'
        WHEN Customer1.customer_id IS NOT NULL AND Orders1.order_id IS NULL
            THEN 'Customer has No Order'
        WHEN Customer1.customer_id IS NULL AND Orders1.order_id IS NOT NULL
            THEN 'Order Customer Does Not Exist'
    END AS status
FROM Customer1
LEFT JOIN Orders1
ON Customer1.customer_id = Orders1.customer_id;

/* 20.Create a complete order report using INNER JOIN.
The report should contain:
Customer ID
Customer Name
City
Order ID
Product Name
Quantity
Amount
Total Value
Calculate:
Total Value = Quantity × Amount */
SELECT 
    Customer1.customer_id,
    Customer1.customer_name,
    Customer1.city,
    Orders1.order_id,
    Orders1.product_name,
    Orders1.quantity,
    Orders1.amount,
    Orders1.quantity * Orders1.amount AS total_value
FROM Customer1
INNER JOIN Orders1
ON Customer1.customer_id = Orders1.customer_id;



