-- the first name and last name of all customers
SELECT first_name,last_name FROM sales.customers;
-- sort the customer list by the first name in ascending order
SELECT 
	*
FROM 
	sales.customers
ORDER BY 
	first_name DESC;
-- sort the customers by the city first and then by the first name.
SELECT 
	*
FROM 
	sales.customers
ORDER BY 
	city,first_name;
-- Retrieve a customer list sorted by the length of the first name.
SELECT 
	*
FROM 
	sales.customers
ORDER BY
	LEN(first_name) DESC;

-- Print all products from the products table and sort
-- the products by their list prices and names
SELECT 
	*
FROM 
	production.products
ORDER BY
	list_price,product_name;

-- skip the first 10 products and return the rest
SELECT 
	*
FROM 
	production.products
ORDER BY
	list_price,product_name
OFFSET 10 ROWS;

-- skip the first 10 products and select the next 10 products
SELECT 
	*
FROM 
	production.products
ORDER BY
	list_price,product_name
OFFSET 10 ROWS
FETCH NEXT 10 ROWS ONLY;

-- get the top 10 most expensive products you use both OFFSET and FETCH clauses
SELECT 
	*
FROM 
	production.products
ORDER BY
	list_price DESC
OFFSET 0 ROWS
FETCH NEXT 10 ROWS ONLY;

-- Print all cities of all customers in the customers tables
SELECT
	city
FROM
	sales.customers
ORDER BY city;
--  get distinct cities, you add the DISTINCT keyword as follows:
SELECT
	DISTINCT city
FROM
	sales.customers
ORDER BY city;

-- find the products whose list price is greater than 300 and model is 2018
-- production.products 
SELECT 
	*
FROM 
	production.products
WHERE
	list_price >= 300 AND model_year = 2018
ORDER BY
	list_price;

-- finds the products whose list prices are between 1,899 and 1,999.99
SELECT 
	*
FROM 
	production.products
WHERE
	list_price BETWEEN 1899 and 1999.99;

-- get the products whose list prices are not in the range 149.99 and 199.99

SELECT 
	*
FROM 
	production.products
WHERE
	list_price NOT BETWEEN  149.99 and 199.99;