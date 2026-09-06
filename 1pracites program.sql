                               /* lecture 1*/

create database p2;
use p2;

/*   1   */
create table p1
(p_id int,
p_name varchar(50),
p_price int);

/*   2   */
insert into p1 values
(1,'pen',10),
(2,'pencil',5),
(3,'book',70),
(4,'chalk',20),
(5,'colour',50);

/*   3   */
select * from p1;

/*   4   */
UPDATE p1 SET p_price = 100 
WHERE p_id = 1;

/*   5   */
delete from p1 
where p_id = 3;

/*   6   */
SELECT p_name , p_price FROM p1;

/*   7   */
select * from p1 
where p_price >50;


/*1.Create a table named product
2.Insert 5 product records
3.Display all records
4.Update price of one product
5.Delete one product record
6.Select only product name and price
7.Find product with price greater than 500*/