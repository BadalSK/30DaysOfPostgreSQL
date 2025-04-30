-- Data & Time Functions in SQL (Part 1)

-- 1. NOW() - Get Current Date and Time
SELECT NOW() AS current_datetime

-- 2. CURRENT DATE() - get Current Date
SELECT CURRENT_DATE AS curr_date

SELECT * FROM products;

SELECT added_date, CURRENT_DATE,(CURRENT_DATE - added_date) AS Days_diffrence
FROM products;

-- 3. EXTRACT() - Extract Parts of a Date
-- Extract Year, month, and Day from the added date column
SELECT product_name, 
         EXTRACT(YEAR FROM added_date) AS year_added,
         EXTRACT(MONTH FROM added_date) AS month_added,
         EXTRACT(DAY FROM added_date) AS day_added
FROM products;

-- 4. AGE() - Calculate Age Between Dates
-- Calculate the time difference between added_date and today's date.
SELECT product_name,
   AGE(CURRENT_DATE, added_date) AS Age_since_added
FROM products;

SELECT 
   AGE(CURRENT_DATE,'1996-01-06') AS Age_since_added


-- 5. TO_CHAR() - Format Dates as Strings
-- format added_date in a custom format (DD-MM-YYYY)
SELECT product_name,
      TO_CHAR(added_date,'DD-MM-YYYY') AS formated_date
FROM products;

SELECT product_name,
      TO_CHAR(added_date,'DD-MM-YY') AS formated_date
FROM products;

SELECT product_name,
      TO_CHAR(added_date,'DD-Mon-YYYY') AS formated_date
FROM products;

SELECT product_name,
      TO_CHAR(added_date,'DD-MM-YYYY-Day') AS formated_date
FROM products;
  
