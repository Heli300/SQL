                                        /* lecture 2*/

/*   1 Create the Analytics Database  */
CREATE DATABASE SalesAnalyticsDB;

/*   use database */
use SalesAnalyticsDB;

/*   2 Create the Customer Table  */
CREATE TABLE customers (
    id INT PRIMARY KEY,
    user_name VARCHAR(50) NOT NULL,
    age INT,
    country VARCHAR(50),
    amount_spend INT
);

/*   3 Insert at least 15 customer records.
Your dataset should contain:
Customers from at least 5 different countries
Different age groups
Different spending amounts
Both low-spending and high-spending customer  
*/
INSERT INTO customers VALUES
(1, 'Amit', 28, 'India', 5200),
(2, 'Sneha', 25, 'USA', 7800),
(3, 'Raj', 32, 'UK', 12500),
(4, 'Simran', 27, 'Canada', 6400),
(5, 'Karan', 24, 'India', 4100),
(6, 'Neha', 30, 'Australia', 9300),
(7, 'Rahul', 35, 'USA', 15600),
(8, 'Priya', 26, 'India', 5700),
(9, 'Jay', 29, 'UK', 8200),
(10, 'Pooja', 31, 'Canada', 11800),
(11, 'Riya', 23, 'Australia', 3600),
(12, 'Vikas', 34, 'India', 14200),
(13, 'Meera', 28, 'USA', 6900),
(14, 'Arjun', 33, 'UK', 10100),
(15, 'Nisha', 27, 'Canada', 4700);

/*   4 Display all customer records.  */
select * from customers;

/*   5 Display only:
Customer name
Age
Country  
*/
SELECT user_name, age, country FROM customers;

/*   6 Display only:
Customer name
Country
Amount spent 
*/
SELECT user_name, country, amount_spend FROM customers;

/*   7 Find all customers whose amount_spend is greater than 50,000. */
SELECT * FROM customers 
WHERE amount_spend > 50000;

/*   8 Find all customers whose age is less than 30. */
SELECT * FROM customers 
WHERE age < 30;

/*   9 Find all customers whose country is:India  */
SELECT * FROM customers 
WHERE country ='India';

/*   10 Find all customers whose amount_spend is less than 20,000.  */
SELECT * FROM customers 
WHERE amount_spend < 20000;

/*   11 Find customers who satisfy both conditions:
Age is less than 30
Amount spent is greater than 30,000  
*/
SELECT * FROM customers 
WHERE age < 30 AND amount_spend > 30000;

/*   12 Find customers who:
Are from India
AND
Have spent more than 40,000
*/
SELECT * FROM customers 
WHERE country = 'India' AND amount_spend > 40000;

/*   13 Find customers who are from either:India,USA
Use the OR operator  
*/
SELECT * FROM customers 
WHERE country = 'India' OR country ='USA';

/*   14  Find customers who satisfy:
Country is India OR USA
AND
Amount spent is greater than 50,000 
*/
SELECT * FROM customers 
WHERE country = 'India' OR country ='USA' AND amount_spend > 30000;

/*   15  Find all customers who are not from India.
Use the NOT operator. 
*/
SELECT * FROM customers 
WHERE country != 'India';

/*   16 Display all customers and arrange them by amount_spend from:
Lowest → Highest  
*/
SELECT * FROM customers 
ORDER BY amount_spend ASC;

/*   17  Display all customers and arrange them by amount_spend from:
Highest → Lowest 
*/
SELECT * FROM customers 
ORDER BY amount_spend DESC;

/*   18 Display:
Customer name
Age
Country
Amount spent
Sort the customers from:
Youngest → Oldest  
*/
SELECT USER_NAME,age,country,amount_spend FROM customers 
order by age asc;

/*   19 Find customers who satisfy all of the following:
Age is between 25 and 40
Amount spent is greater than 30,000
Country is either India or USA
Sort the result by spending from:
Highest → Lowest  
USE:SELECT,WHERE,AND,NOT,ORDER BY
*/
SELECT * FROM customers 
WHERE age BETWEEN 25 AND 40 AND amount_spend > 30000 AND (country ='India' OR country ='USA')
ORDER BY amount_spend DESC;

/*   20 The management wants to identify customers who could be targeted for a premium customer campaign.
Find customers who satisfy:
Age is greater than or equal to 30
Amount spent is greater than 40,000
Customer is not from India
Sort the results by amount spent from highest to lowest  
USE:SELECT,WHERE,AND,NOT,ORDER BY
*/
SELECT * FROM customers 
WHERE age >=30 AND amount_spend > 40000 AND country != 'India'
ORDER BY amount_spend DESC;