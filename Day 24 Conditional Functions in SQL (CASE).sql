/*  Conditional Functions in SQL

 1. CASE - Return value based on Condition
Expensive if the price is greater than or equal to 50,000.
Moderate if the price is between 10,000 And 49,999.
Affordable if the price is less than 10,000.
*/

-- Two condition:- one WHEN
-- Three Condition:- Two WHEN.

SELECT * FROM products;
SELECT product_name, price,
         CASE
		     WHEN price>=50000 THEN 'Expensive'
			 WHEN price>=10000 AND price<=49999 THEN 'Moderate'
			 ELSE 'Affordable'
		  END  AS price_category
FROM products;

-- COALESCE() - Return NON-NULL Value
SELECT product_name, price,
           COALESCE(price>=50000)
FROM products;

SELECT
COALESCE(NULL,'Default','Value');