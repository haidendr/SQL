/*--By D.Haiden*--/
/*--#1 Write a SELECT statement that returns certain column names and data from the Products table--*/
/*--Calculate the discount amount. discount_amount = list_price * discount_percent--*/
/*--Calcualte the discount price. discount_price = list_price - discount_amount--*/
/*--Round discount_amount & discount_price to two decimal places--*/
/*--Sort results by discount price in descending order--*/
/*--Limit to show only the top five rows--*/

SELECT product_name, list_price, discount_percent, 
round((list_price*(discount_percent*0.01)),2) AS discount_amount,
round(list_price - ((list_price*(discount_percent*0.01))),2) AS discount_price
FROM products
ORDER BY discount_price desc
LIMIT 5;


/*--#2 Write a SELECT statement that returns certain column names and data from the order_items table--*/
/*--Calculate the total price. price_total = item_price*quantity--*/
/*--Calculate the discount total. discount_total = discount_amount*quantity--*/
/*--Calculate the item_total. item_total = (item_price-discount_amount)*quantity--*/
/*--Return only rows with item_total greater than 500--*/
/*--Sort results by item_total in descending order--*/

SELECT item_id, item_price, discount_amount, quantity,
round((item_price*quantity),2) AS price_total,
round((discount_amount*quantity),2) AS discount_total,
round(((item_price-discount_amount)*quantity),2) AS item_total
FROM order_items
WHERE ((item_price-discount_amount)*quantity) > 500
ORDER BY item_total DESC;


/*--#3 Write a SELECT statement that returns the product_name and list_price columns from the Products table--*/
/*--Return one row for each product that has the same list price as another product--*/
/*--Use a self-join to check that the product_id columns aren't equal but the list_price columsn are equal--*/
/*--Sort the result set by the product_name column--*/
SELECT t1.product_name, t1.list_price
FROM products AS t1
JOIN products AS t2 
ON t1.product_id <> t2.product_id AND t1.list_price = t2.list_price
ORDER BY t1.product_name ASC;


/*--#4 Write a SELECT statement that returns the category_name column from the Categories table--*/
/*--and the product_id column from the Products table--*/
/*--Return one row for each category that has never been used--*/
/*--use an outer join and only return rows where the product_id column contains a null value--*/
SELECT c.category_name, p.product_id
FROM categories c LEFT JOIN products p ON c.category_id = p.category_id
WHERE p.product_id IS NULL;
    
    
/*--#5 Write an INSERT statement that adds a row to the Customers table--*/
/*--Use a column list for this statement--*/
INSERT customers
VALUE (DEFAULT,'rick@raven.com', ' ', 'Rick', 'Raven', null, null);

TABLE customers;


/*--#6 Write a SELECT statement that answers this questions: Which customers have ordered--*/
/*--more than one product? Return the email_address column from the Customers table--*/
/*--return the count of distinct products from the customer's orders--*/
/*--Sort the result set in ascending order by email_address--*/
SELECT email_address,
COUNT(DISTINCT oi.product_id) AS Number_of_Products
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
JOIN order_items oi ON o.order_id = oi.order_id
GROUP BY email_address
HAVING COUNT(DISTINCT oi.product_id) > 1
ORDER BY email_address;


/*--#7 Write a SELECT statement that answers this question:--*/
/*--What is the total quantity purchased for each product within each category?--*/
/*--Return the category_name column from the category table--*/
/*--Return the product_name column from the products table--*/
/*--Return the total quantity purchased for each product with orders in the Order_Items table--*/
/*--Use the WITH ROLLUP operator to include rows that give a summary for each category name--*/
/*--as well as a row that gives the grand total--*/
/*--Use the IF and GROUPING functions to replace null values in the category_name and--*/
/*--product_name columns with literal values if they're for summary rows --*/
SELECT
	IF(c.category_name IS NULL, "Categories test", c.category_name) Category,
	IF(p.product_name IS NULL, "Products test", p.product_name) Product,
	SUM(oi.quantity) AS Total_Qty_Purchased,
	SUM((oi.item_price-oi.discount_amount)* oi.quantity) AS Grand_Total
FROM products p
JOIN categories c ON p.category_id = c.category_id
JOIN order_items oi ON p.product_id = oi.product_id
GROUP BY
	c.category_name, p.product_name WITH ROLLUP;
    

/*--#8 Write and execute a script that creates a user with a username using your firstname--*/
/*--initial and last name and password of your choosing. This user should be able to connect--*/
/*--to MySQL from any computer. This user should have SELECT, INSERT, UPDATE, and DELETE--*/
/*--privileges for the Customers, Addresses, Orders, and Order_Items tables of the--*/
/*--My Guitar Shop database. However, this user should only have SELECT privileges for the--*/
/*--Products and Categories tables. Also, this user should not have the right to grant privileges--*/
/*--to other users. Check the privileges for the user by using the SHOW GRANTS statement.--*/
CREATE USER IF NOT EXISTS 'NewUserName'@'%' IDENTIFIED BY 'userpw123'; 
GRANT SELECT, INSERT, UPDATE, DELETE ON my_guitar_shop.customers TO 'NewUserName'@'%';
GRANT SELECT, INSERT, UPDATE, DELETE ON my_guitar_shop.addresses TO 'NewUserName'@'%';
GRANT SELECT, INSERT, UPDATE, DELETE ON my_guitar_shop.orders TO 'NewUserName'@'%';
GRANT SELECT, INSERT, UPDATE, DELETE ON my_guitar_shop.order_items TO 'NewUserName'@'%';
GRANT SELECT ON my_guitar_shop.products TO 'NewUserName'@'%';
GRANT SELECT ON my_guitar_shop.categories TO 'NewUserName'@'%';
SHOW GRANTS FOR 'NewUserName';






