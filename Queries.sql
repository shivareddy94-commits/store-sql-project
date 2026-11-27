Use store_db;
-- Show all customers.
Select*from customers;
-- Show only the name and city of all customers.
Select customer_id, city from customers;
-- Show all customers who live in Dallas.
Select * from customers where city = "Dallas";
-- Show all products with a price greater than $30.
Select product_id from products where price>30;
-- Show all products sorted by price, highest first.
select * from products order by price desc limit 1;
-- Show all orders placed in March 2025.
Select * from orders where order_date Between '2025-03-01' and '2025-03-31';
-- Show the 3 cheapest products. (Hint: LIMIT)
select * from products order by price asc limit 2;
-- **** Functions & Grouping (COUNT, SUM, AVG, GROUP BY)*****
-- How many customers are there in total?
Select count(*) from customers;
-- What is the average price of all products?
Select avg(price) as avg from products;
-- How many customers are in each city?
Select city, count(*) from customers group by city;
-- How many products are in each category?
Select category, count(*) from products group by category;
-- Show the cities that have more than 2 customers.
Select city, count(*) from customers group by city having count(*)>2; 
-- ****** JOINs ******
-- Show each order with the customer's name and order date.
select o.order_id, c.name, o.order_date from orders o  join customers c  on o.customer_id = c.customer_id;
-- Show each order item with the product name and quantity.
select o.order_id, o.quantity, p.product_name from order_items o  join products p  on o.product_id = p.product_id;
-- Show the total number of orders for each customer.
select c.name, count(*) from orders o join customers c on o.customer_id=c.customer_id group by c.name;
-- Find customers who have never placed an order. (Hint: LEFT JOIN + IS NULL)
SELECT c.name FROM customers c LEFT JOIN orders o ON o.customer_id = c.customer_id WHERE o.order_id IS NULL;
-- Show the total amount spent by each customer (price × quantity). Sort from highest to lowest.
Select o.quantity,p.price, (quantity*price) as total from order_items o join products p on o.product_id = p.product_id order by total desc;
-- Which product sold the most units?
select p.product_name,sum(o.quantity) as total from products p join order_items o on p.product_id = o.product_id  group by p.product_name order by total desc;
-- Total sales for each category
select p.category, sum(o.quantity*p.price) as total from products p join order_items o on p.product_id = o.product_id group by p.category; 
-- Products priced above average
select product_name, price from products where price > (select avg(price) from products);