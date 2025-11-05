drop table demo

SELECT * FROM ecommerce_transactions

------DATA EXPLORATION----ecommerce_transactions--- 
--1. HOW MANY TOTAL ORDERS ARE THERE 

SELECT COUNT(transaction_id) FROM ecommerce_transactions

--2.HOW MANY UNIQUE CUTOMERS MADE A PURCHASE----
SELECT COUNT(DISTINCT user_name) FROM ecommerce_transactions

---3.List all unique product categories.----
SELECT  DISTINCT product_category FROM ecommerce_transactions

--4.What is the total sales revenue?---
SELECT SUM(purchase_amount) FROM ecommerce_transactions

--5.Which 5 countries have the most orders?--
SELECT country, COUNT(transaction_id) AS total_orders
FROM ecommerce_transactions
GROUP BY country
ORDER BY total_orders DESC
LIMIT 5;

----Section 2: Sales Insights-
--1.Which product categories generate the highest revenue?--
SELECT product_category, SUM(purchase_amount) AS total_revenue
FROM ecommerce_transactions
GROUP BY product_category
ORDER BY total_revenue DESC;

----What is the average order value per transaction?-----
SELECT AVG(purchase_amount) FROM ecommerce_transactions

---Which products have been sold the most (by quantity)?--
SELECT COUNT(transaction_id), product_category FROM ecommerce_transactions GROUP BY product_category

---Section 3: Customer Analysis----
--1Which customers have spent the most money overall?---

SELECT MAX(purchase_amount),user_name FROM ecommerce_transactions 
SELECT user_name, SUM(purchase_amount) AS total_spent
FROM ecommerce_transactions
GROUP BY user_name
ORDER BY total_spent DESC
LIMIT 5;


---How many customers made more than 5 purchases?------

SELECT user_name, COUNT(transaction_id) AS num_purchases
FROM ecommerce_transactions
GROUP BY user_name
HAVING num_purchases > 5
ORDER BY num_purchases DESC;

---Which country has the highest average spend per customer?---
SELECT AVG(purchase_amount) AS avg, country FROM ecommerce_transactions GROUP BY country ORDER BY avg DESC

----HOW MANY CUTOMERS ABOVE 40--BELOW 20--- BETWEEN20 AND 40--

SELECT COUNT(transaction_id) FROM ecommerce_transactions WHERE age>40
SELECT COUNT(transaction_id) FROM ecommerce_transactions WHERE age<20
SELECT COUNT(transaction_id) FROM ecommerce_transactions WHERE age BETWEEN 20 and 40

--by using case---ecommerce_transactions
SELECT COUNT(transaction_id),age,
CASE 
WHEN age<20 THEN 'YOUNG '
WHEN age>40 THEN 'ELDERLY'
ELSE 'ADULTS'
END as agegroup ;
from ecommerce_transactions


---Section 4: Payment Insights---ecommerce_transactions
----What is the TOTAL NUMBER NO of transactions done via each payment method?--
SELECT COUNT(transaction_id)AS total ,payment_method FROM ecommerce_transactions GROUP BY payment_method ORDER BY total DESC

--WHICH PAYMENT USED IS WHICH CATEGOR--ecommerce_transactions

SELECT COUNT(transaction_id),product_category,payment_method FROM ecommerce_transactions GROUP BY payment_method,product_category

---WHICH COUNTRY USED UPI MOST?--ecommerce_transactions
SELECT COUNT(transaction_id),country,payment_method FROM ecommerce_transactions GROUP BY country,payment_method HAVING payment_method='UPI'

---Section 5: Advanced Insights--

---Which are the top 3 most popular categories in each country?--

SELECT COUNT(transaction_id),product_category,country FROM ecommerce_transactions   GROUP BY country,product_category 

-----Find repeat customers (those who made more than one order).
SELECT user_name,COUNT(transaction_id) FROM ecommerce_transactions GROUP BY user_name
-----Find customers who purchased from more than one category.

SELECT user_name, COUNT(DISTINCT product_category) AS categories_bought
FROM ecommerce_transactions
GROUP BY user_name
HAVING categories_bought > 1;


----more insights-----ecommerce_transactions
--highvalue customers---ecommerce_transactions

CREATE view as valualbe_customers 
select user_name,SUM(purchase_amount) AS money_spent 
FROM ecommerce_transactions GROUP BY user_name HAVING money_spent>10000 ORDER BY money_spent DESC
-----SUMAARY TEBALE
create table summary AS
SELECT country,COUNT(transaction_id) AS TOTAL_ORDERS
ROUND(SUM(purchase_amount), 2) AS total_revenue,
    ROUND(AVG(purchase_amount), 2) AS avg_order_value
FROM ecommerce_transactions
GROUP BY country
ORDER BY total_revenue DESC;
SELECT * FROM summary;




