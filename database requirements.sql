

/* Bubs wants you to track information on his customers, his employees, his products and the purchases customers make.
Think about how many tables to create. Which data goes in which tables? How should the tables relate to each other?


/*
table : customers => customer_id, first_name, last_name, email
table: employees => employee_id, first_name, last_name, start_date, position
table: products => product_id, product_name,launched_date
table: customer_purchases => customer_purchases_id, customer_id, product_id,purchsed_at, amount_usd
*/

-- Given the database design you came with, use workbench to create an EER diagram of the database.

/* 
Create a schema called bubsbooties. Within that schema, create the tables that you have diagramed out.
Make sure they relate to each other, and they have the same reasonable data types you selected previously. 
*/

/*
Add any contraints you think your table's columns should have. Which columns need to be unique and are allowed to have NULL values, 
*/

/*
insert records of data into your tables.
*/
USE bubsbooties; 

SELECT @@autocommit;
SET autocommit = ON;

SELECT * FROM customers;
INSERT INTO customers VALUES
(1, 'Nkue', 'Mpofu', 'nkue@gmail.com'),
(2,'Kani','Brown','kani@gmail.com'),
(3,'Henry','Jordan','henry@gmail.com'),
(4,'Mike','Johns','mike@gmail.com'),
(5,'Kelly','Jordan','kelly@yahoo.com');

SELECT * FROM employees;
INSERT INTO employees VALUES
(1,'Trey','Smith','manager','2016-03-25'),
 (2,'Belinda','Berry','cashier','2018-12-12'),
 (3,'Lloyd','Smith','HR','2016-03-25'),
 (4,'George','Smith','Sales','2019-06-18'),
 (5,'Floyd','Ngwenya','Data Clerk','2016-03-25'),
 (6,'James','Dube','Data Clerk','2016-03-25'),
 (7,'Allie','Mpofu','Data Clerk','2016-03-25');
 
SELECT * FROM products;
INSERT INTO products VALUES
(1, 'Big Booties', '2016-06-12'),
(2, 'Medium Booties', '2017-05-09'),
(3, 'Mini Booties', '2018-01-24');

SELECT * FROM customer_purchases;
INSERT INTO customer_purchases VALUES
(1,1,2,3,10.00,'2019-09-01'),
(2,3,3,6,5.00,'2019-07-11'),
(3,2,1,2,'8.00','2018-01-26'),
(4,4,2,1,10.00,'2018-06-03'),
(5,5,3,4,5.00,'2017-11-18');

/* Create users and give them access to the database. 
The first user, MikeJamson, will be the DBA, and should get full database administrator privileges.
The second user, PaterOwen, is an Analyst and only needs read access. 
*/

