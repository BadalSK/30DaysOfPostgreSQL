-- Day26. COALESCE Function in SQL

/* Adding discount_price Columns with NULL Values in it
 A scenario where discount_price is NULL for some products. 
 We'll display price if discount_price is NULL.*/

 SELECT * FROM products;

 ALTER TABLE products
 ADD COLUMN discount_price NUMERIC(10,2);


 UPDATE products
 SET discount_price = NULL
 WHERE product_name IN('Laptop','Desk');

 UPDATE products
 SET discount_price = price * 0.9
 WHERE product_name NOT IN('Laptop','Desk');

 SELECT product_name, price,
       COALESCE(discount_price,price) AS Discounted_price
FROM products;