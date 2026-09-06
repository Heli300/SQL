                                 /* lecture 2*/
/*   1 Create the Analytics Database  */
create database practics;

/*   use database */
use practics;

/*   2 Create the Customer Table  */
create table cust
(id int primary key ,
user_name varchar(50),
age int,
country varchar(50),
amount_spend int);

/*   3  Insert at least 5 customer records.
Your dataset should contain:
Customers from different countries
Different age groups
Different spending amounts
Both low-spending and high-spending customer
*/
insert into cust values
(1,'hp',20,'India',10000),
(2,'h',21,'USA',20000),
(3,'S',22,'London',30000),
(4,'r',30,'India',40000),
(5,'d',25,'USA',50000);

/*   4 Display all customer records.  */
select * from cust;

/*   5 Display only:
Customer name
Age
Country  */
select user_name ,country,age from cust;

/*   6  Display only:
Customer name
Country
Amount spent 
 */
select user_name ,country,amount_spend from cust;

/*   7 Find all customers whose amount_spend is greater than 50,000.  */
select * from cust 
where amount_spend > 50000;

/*   8 Find all customers whose age is less than 30.  */
select * from cust 
where age < 30;

/*   9 Find all customers whose country is:India  */
select * from cust 
where country = 'India';

/*   10 Find all customers whose amount_spend is less than 20,000.  */
select * from cust 
where amount_spend < 20000;

/*   11 Find customers who satisfy both conditions:
Age is less than 30
Amount spent is greater than 30,000  
  */
select * from cust 
where age<30 AND amount_spend>30000;

/*   12 Find customers who:
Are from India
AND
Have spent more than 40,000  
*/
select * from cust 
where country='India' AND amount_spend>40000;

/*   13 Find customers who are from either:India,USA
Use the OR operator
*/
select * from cust 
where country='India' OR country='USA';

/*   14  Find customers who satisfy:
Country is India OR USA
AND
Amount spent is greater than 50,000 
 */
select * from cust 
where country='India' OR country='USA' AND amount_spend>50000;

/*   15  Find all customers who are not from India.
Use the NOT operator.
*/
select * from cust 
where country !='India';

/*   16 Display all customers and arrange them by amount_spend from:
Lowest → Highest  
  */
select * from cust 
order by amount_spend asc;

/*   17 Display all customers and arrange them by amount_spend from:
Highest → Lowest
*/
select * from cust 
order by amount_spend desc;

/*   18 Display:
Customer name
Age
Country
Amount spent
Sort the customers from:
Youngest → Oldest  
  */
select USER_NAME ,age,country,amount_spend from cust 
order by age desc;

/*   19  Find customers who satisfy all of the following:
Age is between 25 and 40
Amount spent is greater than 30,000
Country is either India or USA
Sort the result by spending from:
Highest → Lowest  
USE:SELECT,WHERE,AND,NOT,ORDER BY
*/
select * from cust 
where age between 25 and 40 and amount_spend>30000 and (country ='India' OR country='USA') 
ORDER BY amount_spend DESC;

/*   20 The management wants to identify customers who could be targeted for a premium customer campaign.
Find customers who satisfy:
Age is greater than or equal to 30
Amount spent is greater than 40,000
Customer is not from India
Sort the results by amount spent from highest to lowest  
USE:SELECT,WHERE,AND,NOT,ORDER BY
*/
SELECT * FROM cusT 
WHERE age >=30 AND amount_spend > 40000 AND country != 'India'
ORDER BY amount_spend DESC;