--Day 27  Window Functions in SQL
/* Window functions help perform calculations across a dataset without grouping data. This lesson covers functions like ROW_NUMBER(), RANK(), and LEAD().

What You Will Learn:

Understanding the concept of window functions.
Using ROW_NUMBER() for ranking data.
Applying LEAD() and LAG() for data comparisons.
Writing queries with PARTITION BY. */

-- Assign a unique row number to each product within the same category.

SELECT product_name, category, price,
      ROW_NUMBER() OVER(PARTITION BY category ORDER BY price DESC) AS row_num
FROM products;

SELECT product_name, category, price,
      DENSE_RANK() OVER(PARTITION BY category ORDER BY price DESC) AS row_num
FROM products;

SELECT product_name, category, price,
      RANK() OVER(PARTITION BY category ORDER BY price DESC) AS row_num
FROM products;

SELECT product_name, category, price,
      SUM(price) OVER(ORDER BY price DESC) AS Running_total
FROM products;

SELECT product_name, category, price,
      SUM(price) OVER(PARTITION BY category ORDER BY price DESC) AS Running_total
FROM products;

SELECT product_name, category, price,
      AVG(price) OVER(PARTITION BY category ORDER BY price DESC) AS Running_total
FROM products;