                                /* lecture- - 8 */

create database num_function;

use num_function;

CREATE TABLE Orders(
    order_id INT,
    customer_name VARCHAR(100),
    product_name VARCHAR(100),
    quantity INT,
    price DECIMAL(10,2),
    profit DECIMAL(10,2),
    discount DECIMAL(10,2),
    radius DECIMAL(10,2),
    phone VARCHAR(20),
    mobile VARCHAR(20),
    office_phone VARCHAR(20),
    home_phone VARCHAR(20),
    order_date DATE,
    delivery_date DATE
);

INSERT INTO Orders VALUES
(1, 'Rahul', 'Laptop', 2, 55000.75, 5000.50, 10.00, 5.00, '9876543210', '9876543210', NULL, NULL, '2025-01-15', '2025-01-20'),
(2, 'Priya', 'Mouse', 5, 750.40, -500.25, NULL, 3.00, NULL, NULL, '0791234567', NULL, '2025-02-10', '2025-02-15'),
(3, 'Amit', 'Keyboard', 3, 1250.99, 0, 5.00, 4.00, '9988776655', NULL, NULL, '9988776655', '2025-03-05', NULL),
(4, 'Neha', 'Monitor', 1, 15000.60, 2500.75, NULL, 6.00, NULL, NULL, NULL, NULL, '2026-01-20', '2026-01-28'),
(5, 'Karan', 'Headphones', 4, 2200.45, -300.80, 15.00, 2.50, '9123456780', '9123456780', NULL, NULL, '2026-02-12', NULL);

select * from Orders;

/* 1.Display the absolute value of the profit column.*/
SELECT 
    profit,
    ABS(profit) AS absolute_profit
FROM Orders;

/* 2.Display product prices rounded to 2 decimal places.*/
SELECT 
    price,
    ROUND(price, 2) AS rounded_price
FROM Orders;

/* 3.Display the ceiling value of every product price.*/
SELECT 
    price,
    CEILING(price) AS ceiling_price
FROM Orders;

/* 4.Display the floor value of every product price.*/
SELECT 
    price,
    FLOOR(price) AS floor_price
FROM Orders;

/* 5.Calculate the square of every quantity.*/
SELECT 
    quantity,
    POWER(quantity, 2) AS quantity_square
FROM Orders;

/* 6.Calculate the square root of a numeric column.*/
SELECT 
    quantity,
    SQRT(quantity) AS square_root
FROM Orders;

/* 7.Calculate a total order value using:quantity × price
and round the result to 2 decimal places.*/
SELECT 
    quantity,
    price,
    ROUND(quantity * price, 2) AS total_order_value
FROM Orders;

/* 8.Display whether each transaction has a positive, negative, or zero profit using SIGN().*/
SELECT 
    profit,
    SIGN(profit) AS profit_sign
FROM Orders;

/* 9.Generate a random number between 1 and 100.*/
SELECT FLOOR(RAND() * 100) + 1 AS random_number;

/* 10.Calculate the area of a circle with radius stored in a column.*/
SELECT 
    radius,
    PI() * POWER(radius, 2) AS circle_area
FROM Orders;

/* 11.Display the current date and time.*/
SELECT GETDATE() AS current_date_time;

/* 12.Display today's date without the time portion.*/
SELECT CAST(GETDATE() AS DATE) AS today_date;

/* 13.Display the year from every order date.*/
SELECT 
    order_date,
    YEAR(order_date) AS order_year
FROM Orders;

/* 14.Display the month number from every order date.*/
SELECT 
    order_date,
    MONTH(order_date) AS month_number
FROM Orders;

/* 15.Display the name of the month from every order date.*/
SELECT 
    order_date,
    DATENAME(MONTH, order_date) AS month_name
FROM Orders;

/* 16.Display the weekday name for every order.*/
SELECT 
    order_date,
    DATENAME(WEEKDAY, order_date) AS weekday_name
FROM Orders;

/* 17.Calculate the number of days between order date and delivery date.*/
SELECT 
    order_date,
    delivery_date,
    DATEDIFF(DAY, order_date, delivery_date) AS delivery_days
FROM Orders;

/* 18.Calculate an expected delivery date by adding 7 days to the order date.*/
SELECT 
    order_date,
    DATEADD(DAY, 7, order_date) AS expected_delivery_date
FROM Orders;

/* 19.Display the last day of the month for every order date.*/
SELECT 
    order_date,
    EOMONTH(order_date) AS month_end_date
FROM Orders;

/* 20.Display orders placed in each year and month.*/
SELECT 
    YEAR(order_date) AS order_year,
    MONTH(order_date) AS order_month,
    COUNT(*) AS total_orders
FROM Orders
GROUP BY 
    YEAR(order_date),
    MONTH(order_date)
ORDER BY 
    YEAR(order_date),
    MONTH(order_date);

/* 21.Find all customers whose phone number is NULL.*/
SELECT *
FROM Orders
WHERE phone IS NULL;

/* 22.Find all customers whose phone number is NOT NULL.*/
SELECT *
FROM Orders
WHERE phone IS NOT NULL;

/* 23.Display Not Available instead of NULL phone numbers.*/
SELECT 
    customer_name,
    COALESCE(phone, 'Not Available') AS phone
FROM Orders;

/* 24.Display 0 instead of NULL discount values.*/
SELECT 
    customer_name,
    COALESCE(discount, 0) AS discount
FROM Orders;

/* 25.For every customer, return the first available value among:
mobile
office_phone
home_phone
If all are NULL, display:
No Contact.*/
SELECT 
    customer_name,
    COALESCE(
        mobile,
        office_phone,
        home_phone,
        'No Contact'
    ) AS contact_number
FROM Orders;

/* 26.Find the number of rows in a table using COUNT(*).*/
SELECT COUNT(*) AS total_rows
FROM Orders;

/* 27.Find the number of non-NULL values in a specific column.*/
SELECT COUNT(phone) AS non_null_phone_count
FROM Orders;

/* 28.Calculate an average while handling NULL values.*/
SELECT 
    AVG(discount) AS average_discount
FROM Orders;

/* 29.Calculate a percentage without causing a divide-by-zero error.
    Use NULLIF().*/
SELECT 
    profit,
    price,
    ROUND((profit / NULLIF(price, 0)) * 100, 2) AS profit_percentage
FROM Orders;

/* 30.Find orders where the delivery date is NULL and calculate how many days have passed since the order date.*/
SELECT 
    order_id,
    order_date,
    DATEDIFF(DAY, order_date, GETDATE()) AS days_passed
FROM Orders
WHERE delivery_date IS NULL;
