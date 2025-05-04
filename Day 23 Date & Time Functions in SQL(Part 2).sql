-- DATE & TIME FUNCTIONS IN SQL PART 2

SELECT * FROM products;

-- 6. DATE_PART() - Get Specific Date Part
--Extract the day of the week from added_date

SELECT product_name, added_date,
        DATE_PART('dow',added_date) AS day_of_week
FROM products;

SELECT product_name, added_date,
        DATE_PART('year',added_date) AS day_of_week
FROM products;

SELECT product_name, added_date,
        DATE_PART('month',added_date) AS day_of_week
FROM products;

-- CHATGPT- can u show me the all formats of date_part like dow and what are others

-- 7. DATE_TRUNC() - Truncate Date to Precision
--Truncate added_date to the start of the month

SELECT product_name,added_date,
       DATE_TRUNC('month',added_date) AS month_start
FROM products;
SELECT product_name,added_date,
       DATE_TRUNC('week',added_date) AS week_start,
	   DATE_PART('isodow',added_date) AS day_of_week
FROM products;

-- 8. INTERVAL - Add or Subtract Time Intervals
-- Add 6 months to the added_date.

SELECT product_name, added_date,
       added_date + INTERVAL '6 days' AS new_date,
	   added_date - INTERVAL '6 days' AS new_date_before,
	   added_date + INTERVAL '6 months' AS new_date_month
FROM products;

-- 9. CURRENT_TIME() -  Get Current Time
-- Retrieve only the Current Time

SELECT CURRENT_TIME AS current_time;

-- 10. TO_DATE() - Convert String to Date
-- Convert a string to a Date Format.

SELECT TO_DATE('20-11-2024','DD-MM-YYYY') AS date_to_string;
