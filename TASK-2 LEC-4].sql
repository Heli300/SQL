                            /* lecture 4 */
CREATE DATABASE HP;

USE HP;

create table sales(
transaction_id int primary key,
customer_name varchar(50),
product_name varchar(50),
category varchar(50),
quantity int,
unit_price int,
discount_percent int,
city varchar(50),
payment_mode varchar(50),
salesperson varchar(50),
customer_type varchar(30))
;

INSERT INTO sales VALUES
(1001, 'Aarav Mehta', 'Laptop Pro 15', 'Electronics', 2, 75000, 10, 'Ahmedabad', 'Online', 'Rahul', 'Premium'),
(1002, 'Priya Shah', 'Office Chair', 'Furniture', 5, 12000, 8, 'Mumbai', 'Card', 'Neha', 'Regular'),
(1003, 'Rohan Patel', 'Smartphone X', 'Electronics', 3, 45000, 12, 'Ahmedabad', 'UPI', 'Amit', 'Premium'),
(1004, 'Sneha Verma', 'Refrigerator', 'Appliances', 1, 68000, 15, 'Delhi', 'Card', 'Priya', 'VIP'),
(1005, 'Karan Joshi', 'Dining Table', 'Furniture', 4, 18000, 5, 'Pune', 'Cash', 'Rahul', 'Regular'),
(1006, 'Ananya Rao', 'Laptop Air 14', 'Electronics', 1, 62000, 7, 'Bangalore', 'Online', 'Neha', 'Premium'),
(1007, 'Vikram Singh', 'Washing Machine', 'Appliances', 2, 42000, 18, 'Jaipur', 'UPI', 'Amit', 'Regular'),
(1008, 'Meera Kapoor', 'Smartphone Pro', 'Electronics', 4, 55000, 20, 'Mumbai', 'Card', 'Priya', 'VIP'),
(1009, 'Aditya Shah', 'Sofa Set', 'Furniture', 3, 35000, 10, 'Ahmedabad', 'Online', 'Rahul', 'Premium'),
(1010, 'Ishita Patel', 'Air Conditioner', 'Appliances', 2, 58000, 12, 'Surat', 'UPI', 'Neha', 'Premium'),
(1011, 'Raj Malhotra', 'Gaming Laptop', 'Electronics', 2, 95000, 15, 'Delhi', 'Card', 'Amit', 'VIP'),
(1012, 'Kavya Desai', 'Bookshelf', 'Furniture', 6, 9000, 5, 'Pune', 'Cash', 'Priya', 'Regular'),
(1013, 'Arjun Mehta', 'Smart TV 55', 'Electronics', 2, 72000, 18, 'Bangalore', 'Online', 'Rahul', 'Premium'),
(1014, 'Nisha Sharma', 'Microwave Oven', 'Appliances', 3, 22000, 8, 'Ahmedabad', 'UPI', 'Neha', 'Regular'),
(1015, 'Yash Patel', 'Refrigerator Pro', 'Appliances', 1, 82000, 20, 'Mumbai', 'Card', 'Amit', 'VIP'),
(1016, 'Simran Kaur', 'Office Desk', 'Furniture', 5, 16000, 12, 'Delhi', 'Online', 'Priya', 'Regular'),
(1017, 'Dev Kumar', 'Smartphone Ultra', 'Electronics', 3, 68000, 10, 'Jaipur', 'UPI', 'Rahul', 'Premium'),
(1018, 'Riya Shah', 'Washing Machine Pro', 'Appliances', 4, 48000, 22, 'Surat', 'Card', 'Neha', 'Premium'),
(1019, 'Manav Joshi', 'Premium Sofa', 'Furniture', 2, 65000, 15, 'Ahmedabad', 'Online', 'Amit', 'VIP'),
(1020, 'Pooja Mehta', 'Tablet Pro', 'Electronics', 5, 32000, 8, 'Pune', 'UPI', 'Priya', 'Regular'),
(1021, 'Harsh Verma', 'Laptop Ultra', 'Electronics', 3, 88000, 25, 'Mumbai', 'Card', 'Rahul', 'VIP'),
(1022, 'Neel Shah', 'Air Conditioner Pro', 'Appliances', 2, 76000, 10, 'Delhi', 'Online', 'Neha', 'Premium'),
(1023, 'Tanvi Rao', 'Dining Set', 'Furniture', 4, 28000, 18, 'Bangalore', 'Cash', 'Amit', 'Regular'),
(1024, 'Siddharth Patel', 'Smart TV Pro', 'Electronics', 6, 60000, 12, 'Surat', 'UPI', 'Priya', 'Premium'),
(1025, 'Aisha Khan', 'Double Door Refrigerator', 'Appliances', 2, 92000, 20, 'Ahmedabad', 'Card', 'Rahul', 'VIP'),
(1026, 'Mohit Singh', 'Executive Chair', 'Furniture', 7, 14000, 10, 'Jaipur', 'Online', 'Neha', 'Regular'),
(1027, 'Diya Mehta', 'Gaming Monitor', 'Electronics', 3, 52000, 15, 'Delhi', 'UPI', 'Amit', 'Premium'),
(1028, 'Varun Shah', 'Washing Machine', 'Appliances', 5, 38000, 28, 'Mumbai', 'Cash', 'Priya', 'Regular'),
(1029, 'Isha Patel', 'Luxury Sofa', 'Furniture', 3, 78000, 12, 'Pune', 'Card', 'Rahul', 'VIP'),
(1030, 'Dhruv Sharma', 'Business Laptop', 'Electronics', 2, 110000, 18, 'Bangalore', 'Online', 'Neha', 'VIP');

SELECT * FROM sales;

/*  1 Generate a business summary of the sales table showing:
Total number of transactions
Total quantity sold
Total sales value based on quantity × unit_price
Average unit price
Highest unit price
Lowest unit price
*/
SELECT
    COUNT(*) AS total_transactions,
    SUM(quantity) AS total_quantity_sold,
    SUM(quantity * unit_price) AS total_sales_value,
    AVG(unit_price) AS average_unit_price,
    MAX(unit_price) AS highest_unit_price,
    MIN(unit_price) AS lowest_unit_price
FROM sales;

/*  2 Management wants to compare product categories.
For each category, display:
Number of transactions
Total quantity sold
Total sales value
Average unit price
Arrange the categories from highest total sales value to lowest.
*/
SELECT
    category,
    COUNT(*) AS number_of_transactions,
    SUM(quantity) AS total_quantity_sold,
    SUM(quantity * unit_price) AS total_sales_value,
    AVG(unit_price) AS average_unit_price
FROM sales
GROUP BY category
ORDER BY total_sales_value DESC;

/*  3 Calculate the performance of each salesperson.
Display:
Salesperson
Number of transactions handled
Total quantity sold
Total sales value
Average unit price
Arrange the result from highest total sales value to lowest. 
*/
SELECT
    salesperson,
    COUNT(transaction_id) AS number_of_transactions,
    SUM(quantity) AS total_quantity_sold,
    SUM(quantity * unit_price) AS total_sales_value,
    AVG(unit_price) AS average_unit_price
FROM sales
GROUP BY salesperson
ORDER BY total_sales_value DESC;

/*  4 Analyze sales performance across cities.
For each city, display:
Number of transactions
Total quantity sold
Total sales value
Average unit price
Display the cities in descending order of total sales value.
*/
SELECT
    city,
    COUNT(transaction_id) AS number_of_transactions,
    SUM(quantity) AS total_quantity_sold,
    SUM(quantity * unit_price) AS total_sales_value,
    AVG(unit_price) AS average_unit_price
FROM sales
GROUP BY city
ORDER BY total_sales_value DESC;

/*  5 Analyze purchasing behavior based on customer type.
For each customer type, calculate:
Number of transactions
Total quantity purchased
Total sales value
Average unit price
Arrange the result by total sales value from highest to lowest. 
*/
SELECT
    customer_type,
    COUNT(transaction_id) AS number_of_transactions,
    SUM(quantity) AS total_quantity_purchased,
    SUM(quantity * unit_price) AS total_sales_value,
    AVG(unit_price) AS average_unit_price
FROM sales
GROUP BY customer_type
ORDER BY total_sales_value DESC;

/*  6  Management wants to understand which payment methods generate the most business.
For each payment mode, calculate:
Number of transactions
Total quantity sold
Total sales value
Average unit price
Arrange the result by total sales value in descending order.
*/
SELECT
    payment_mode,
    COUNT(transaction_id) AS number_of_transactions,
    SUM(quantity) AS total_quantity_sold,
    SUM(quantity * unit_price) AS total_sales_value,
    AVG(unit_price) AS average_unit_price
FROM sales
GROUP BY payment_mode
ORDER BY total_sales_value DESC;

/*  7  Identify categories that generated more than 300000 in total sales value.
Display:
Category
Total quantity sold
Total sales value
Average unit price
Only categories meeting the required sales threshold should appear.
*/
SELECT
    category,
    SUM(quantity) AS total_quantity_sold,
    SUM(quantity * unit_price) AS total_sales_value,
    AVG(unit_price) AS average_unit_price
FROM sales
GROUP BY category
HAVING SUM(quantity * unit_price) > 300000;

/*  8 Identify salespersons whose total sales value is greater than 500000.
Display:
Salesperson
Number of transactions
Total quantity sold
Total sales value
Arrange the result from highest to lowest total sales value. 
*/
SELECT
    salesperson,
    COUNT(transaction_id) AS number_of_transactions,
    SUM(quantity) AS total_quantity_sold,
    SUM(quantity * unit_price) AS total_sales_value
FROM sales
GROUP BY salesperson
HAVING SUM(quantity * unit_price) > 500000
ORDER BY total_sales_value DESC;

/*  9 Identify products where the total quantity sold is greater than 5.
Display:
Product name
Total quantity sold
Total sales value
Average unit price
Arrange the result by total quantity sold from highest to lowest. 
*/
SELECT
    product_name,
    SUM(quantity) AS total_quantity_sold,
    SUM(quantity * unit_price) AS total_sales_value,
    AVG(unit_price) AS average_unit_price
FROM sales
GROUP BY product_name
HAVING SUM(quantity) > 5
ORDER BY total_quantity_sold DESC;

/* 10 Analyze only transactions made by Premium customers.
For each category, calculate:
Number of transactions
Total quantity sold
Total sales value
Average unit price
Display only categories where the total sales value is greater than 200000.
*/
SELECT
    category,
    COUNT(transaction_id) AS number_of_transactions,
    SUM(quantity) AS total_quantity_sold,
    SUM(quantity * unit_price) AS total_sales_value,
    AVG(unit_price) AS average_unit_price
FROM sales
WHERE customer_type = 'Premium'
GROUP BY category
HAVING SUM(quantity * unit_price) > 200000;

/* 11 Analyze transactions made by VIP customers.
For each salesperson, calculate:
Number of transactions
Total quantity sold
Total sales value
Display only salespersons who generated more than 300000 in VIP sales.
*/
SELECT
    salesperson,
    COUNT(transaction_id) AS number_of_transactions,
    SUM(quantity) AS total_quantity_sold,
    SUM(quantity * unit_price) AS total_sales_value
FROM sales
WHERE customer_type = 'VIP'
GROUP BY salesperson
HAVING SUM(quantity * unit_price) > 300000;

/* 12 Consider transactions where the payment mode is either Online or Card.
For each city, calculate:
Number of transactions
Total quantity sold
Total sales value
Display only cities where total sales value is greater than 300000.
*/
SELECT
    city,
    COUNT(transaction_id) AS number_of_transactions,
    SUM(quantity) AS total_quantity_sold,
    SUM(quantity * unit_price) AS total_sales_value
FROM sales
WHERE payment_mode IN ('Online', 'Card')
GROUP BY city
HAVING SUM(quantity * unit_price) > 300000;

/* 13 Analyze the effect of discounts.
For each discount percentage, calculate:
Number of transactions
Total quantity sold
Total sales value
Average unit price
Display only discount percentages that occur in at least 2 transactions.
*/
SELECT
    discount_percent,
    COUNT(transaction_id) AS number_of_transactions,
    SUM(quantity) AS total_quantity_sold,
    SUM(quantity * unit_price) AS total_sales_value,
    AVG(unit_price) AS average_unit_price
FROM sales
GROUP BY discount_percent
HAVING COUNT(transaction_id) >= 2;

/* 14 Consider only Electronics transactions.
For each salesperson, calculate:
Number of transactions
Total quantity sold
Total sales value
Average unit price
Highest unit price
Display only salespersons whose Electronics sales value exceeds 250000.
*/
SELECT
    salesperson,
    COUNT(transaction_id) AS number_of_transactions,
    SUM(quantity) AS total_quantity_sold,
    SUM(quantity * unit_price) AS total_sales_value,
    AVG(unit_price) AS average_unit_price,
    MAX(unit_price) AS highest_unit_price
FROM sales
WHERE category = 'Electronics'
GROUP BY salesperson
HAVING SUM(quantity * unit_price) > 250000;

/* 15 Consider only Furniture transactions where the quantity is greater than 2.
For each city, calculate:
Number of transactions
Total quantity sold
Total sales value
Average unit price
Display only cities where the resulting total sales value is greater than 50000. 
*/
SELECT
    city,
    COUNT(transaction_id) AS number_of_transactions,
    SUM(quantity) AS total_quantity_sold,
    SUM(quantity * unit_price) AS total_sales_value,
    AVG(unit_price) AS average_unit_price
FROM sales
WHERE category = 'Furniture'
  AND quantity > 2
GROUP BY city
HAVING SUM(quantity * unit_price) > 50000;

/* 16 Consider only Appliances transactions where:
Payment mode is not Cash
Discount percentage is less than 20
Group the transactions by salesperson and display:
Number of transactions
Total quantity sold
Total sales value
Average unit price
Display only salespersons with total sales value above 100000.
*/
SELECT
    salesperson,
    COUNT(transaction_id) AS number_of_transactions,
    SUM(quantity) AS total_quantity_sold,
    SUM(quantity * unit_price) AS total_sales_value,
    AVG(unit_price) AS average_unit_price
FROM sales
WHERE category = 'Appliances'
  AND payment_mode <> 'Cash'
  AND discount_percent < 20
GROUP BY salesperson
HAVING SUM(quantity * unit_price) > 100000;

/* 17 Analyze only Premium and VIP customers.
For each customer type, calculate:
Number of transactions
Total quantity sold
Total sales value
Average unit price
Maximum unit price
Arrange the result by total sales value from highest to lowest.
*/
SELECT
    customer_type,
    COUNT(transaction_id) AS number_of_transactions,
    SUM(quantity) AS total_quantity_sold,
    SUM(quantity * unit_price) AS total_sales_value,
    AVG(unit_price) AS average_unit_price,
    MAX(unit_price) AS maximum_unit_price
FROM sales
WHERE customer_type IN ('Premium', 'VIP')
GROUP BY customer_type
ORDER BY total_sales_value DESC;

/* 18 Management wants to identify salespersons handling high-discount transactions.
Consider only transactions where the discount percentage is greater than 15.
For each salesperson, calculate:
Number of transactions
Total quantity sold
Total sales value
Average discount percentage
Display only salespersons who have at least 2 such transactions.
*/
SELECT
    salesperson,
    COUNT(transaction_id) AS number_of_transactions,
    SUM(quantity) AS total_quantity_sold,
    SUM(quantity * unit_price) AS total_sales_value,
    AVG(discount_percent) AS average_discount_percentage
FROM sales
WHERE discount_percent > 15
GROUP BY salesperson
HAVING COUNT(transaction_id) >= 2;

/* 19 A new customer transaction has been received with the following information:
Field	Value
Transaction ID	1031
Customer Name	Raj Mehta
Product Name	MacBook Pro
Category	Electronics
Quantity	2
Unit Price	125000
Discount	10
City	Mumbai
Payment Mode	Online
Salesperson	Rahul
Customer Type	Premium
Insert this transaction into the table.
After inserting the record, generate a query to verify that the transaction has been successfully added.
*/
INSERT INTO sales VALUES(1031,'Raj Mehta','MacBook Pro','Electronics',2,125000,10,'Mumbai','Online','Rahul','Premium');
SELECT * FROM sales WHERE transaction_id = 1031;

/*  20 Management wants a consolidated performance report.
Consider transactions where:
Customer type is either Premium or VIP
Payment mode is not Cash
Quantity is greater than 1
Discount percentage is less than 20
Group the qualifying transactions by salesperson and category.
The report must contain:
Salesperson
Category
Number of transactions
Total quantity sold
Total sales value
Average unit price
Minimum unit price
Maximum unit price
Average discount percentage
Display only salesperson-category combinations where the total sales value is greater than 200000.
Arrange the final report from highest total sales value to lowest.
*/
SELECT
    salesperson,
    category,
    COUNT(transaction_id) AS number_of_transactions,
    SUM(quantity) AS total_quantity_sold,
    SUM(quantity * unit_price) AS total_sales_value,
    AVG(unit_price) AS average_unit_price,
    MIN(unit_price) AS minimum_unit_price,
    MAX(unit_price) AS maximum_unit_price,
    AVG(discount_percent) AS average_discount_percentage
FROM sales
WHERE customer_type IN ('Premium', 'VIP')
  AND payment_mode <> 'Cash'
  AND quantity > 1
  AND discount_percent < 20
GROUP BY salesperson, category
HAVING SUM(quantity * unit_price) > 200000
ORDER BY total_sales_value DESC;

                               /*     CRUD OPERATION      */
/*       CREATE            */
SELECT * FROM sales

/*          READ           */
SELECT * FROM sales
WHERE transaction_id = 1031

/*          UPDATE         */
UPDATE sales
SET discount_percent =12
WHERE transaction_id =1031;

/*          DELETE        */
DELETE FROM sales
WHERE transaction_id =1031

SELECT * FROM sales;

