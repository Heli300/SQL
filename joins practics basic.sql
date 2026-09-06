CREATE DATABASE JoinPractice;

USE JoinPractice;

CREATE TABLE Customer(
id int,
name varchar(50),
age int,
address varchar(50));
    
CREATE TABLE Orders(
O_id int,
id int ,
item varchar(50),
amount int);

insert into Customer values
(1,'rohan',21,'india'),
(2,'riya',22,'china'),
(3,'het',23,'london'),
(4,'hiren',24,'usa');

insert into Orders values
(01,1,'burger',150),
(02,2,'dossa',180),
(03,5,'pizza',250),
(04,7,'wrap',300);

/* inner */
select * from Customer
inner join Orders
on Customer.id=Orders.id;

/* left */
select * from Customer
LEFT join Orders
on Customer.id=Orders.id;

/* right */
select * from Customer
RIGHT join Orders
on Customer.id=Orders.id;

/* full */
select * from Customer
FULL join Orders
on Customer.id=Orders.id;

/* show only two coloums*/
select name,item from Customer
FULL join Orders
on Customer.id=Orders.id;