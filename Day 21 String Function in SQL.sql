-- STRING FUNCTIONS IN SQL

SELECT * FROM products;

-- Get all the categories in UpperCase

SELECT UPPER(category) AS categoies
FROM products;

-- Get All the category in LowerCase

SELECT LOWER(category) AS category_lower FROM products;

--Count Length of the String

SELECT lENGTH('SQL Query');
SELECT product_name, LENGTH(product_name) AS count_or_char
FROM products;

--- Join Product_name and Category with Hypen

SELECT CONCAT(product_name,'-',category) AS product_category 
FROM products;

--Extract the first 5 characters from product_name

SELECT SUBSTRING(product_name,1,5) AS short_name
FROM products;

SELECT SUBSTRING(product_name,1,5) AS short_name
FROM products ORDER BY short_name ASC;

--Remove leading and trailing SPACES from String

SELECT TRIM('   Monitor     ') AS trim_text;
SELECT LENGTH(TRIM('   Monitor     ')) AS trim_text;
SELECT product_name, LENGTH(product_name) AS product_length ,TRIM(product_name) AS trimed_product
FROM products;


--Replace the word "phone" with" device" in product_name

SELECT REPLACE(product_name,'phone','device') AS updated
FROM products;


--Get the first 3 characters from category

SELECT LEFT(Category, 3) AS Category_3 FROM Products;

SELECT RIGHT(Category, 4) AS category_4 FROM products;
