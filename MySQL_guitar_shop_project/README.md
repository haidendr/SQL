SQL Practice Scripts – My Guitar Shop Database
This repository contains a collection of SQL scripts written for practice and learning purposes using a sample database called My Guitar Shop. The scripts demonstrate a variety of SQL concepts including data retrieval, aggregation, joins, subqueries, user privileges, and more.

Contents
1. Top 5 Discounted Products
Retrieves product name, list price, discount percent

Calculates:

discount_amount = list_price * discount_percent

discount_price = list_price - discount_amount

Rounds values to 2 decimal places

Orders by discount_price descending

Limits output to top 5 products

2. High-Value Order Items
From order_items, calculates:

price_total = item_price * quantity

discount_total = discount_amount * quantity

item_total = (item_price - discount_amount) * quantity

Filters for item_total > 500

Orders by item_total descending

3. Products with Matching Prices
Uses a self-join on products to find products with the same list_price but different product_id

Returns product_name and list_price

Orders alphabetically by product_name

4. Unused Categories
Performs a LEFT JOIN between categories and products

Returns categories that have no associated products (product_id IS NULL)

5. Insert New Customer
Inserts a new row into the customers table using a column list

Example data includes a customer named Rick Raven

6. Customers with Multiple Product Orders
Joins customers, orders, and order_items

Counts distinct product_ids per customer

Filters for customers who ordered more than one product

Returns email_address and product count

Orders by email_address ascending

7. Product Purchase Summary by Category
Joins products, categories, and order_items

Aggregates:

Total quantity purchased per product

Total revenue per product

Uses WITH ROLLUP to include category and grand totals

Replaces NULL values in rollup rows with labels using IF and GROUPING

8. Create and Grant User Privileges
Creates a new MySQL user (NewUserName) with a password

Grants:

SELECT, INSERT, UPDATE, DELETE on customers, addresses, orders, order_items

SELECT only on products, categories

Verifies privileges using SHOW GRANTS

Technologies Used
SQL (MySQL dialect)

Sample schema: my_guitar_shop

Purpose
These scripts were originally written as part of a learning exercise to practice SQL fundamentals and database administration. They demonstrate practical use cases such as data analysis, reporting, and user management.

Notes
Ensure the my_guitar_shop database and its tables (products, categories, customers, orders, order_items, addresses) exist before running the scripts.

Replace 'NewUserName' and 'userpw123' with your actual desired credentials in script #8.
