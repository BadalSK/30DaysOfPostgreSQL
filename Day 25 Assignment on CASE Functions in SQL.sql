-- Day 25 – Assignment on CASE Functions in SQL
/* Q. In Shock IF quentity is 10 or more.
      Limited Stock if quentity is between 5 and 9.
	  Out of Stock Soon if quentity is less than 5.*/

SELECT * FROM products;

SELECT product_name, quantity,
           CASE
		       WHEN quantity>=10 THEN 'In Stock'
			   WHEN quantity>= 5 AND quantity<=9 THEN 'limited Stock'
			   WHEN quantity BETWEEN 5 AND 9 THEN 'limited Stock'
			   ELSE 'Out of Stock Soon'
			   END AS quantity_stock_status
FROM products;

/* Q. CASE with LIKE Operator - Category Classification
Check if the category name contains 'Electronics Item' or 'Furniture Item' or
'Accessory Item' Using LIKE */

SELECT product_name, Category,
        CASE
		    WHEN category LIKE 'Electronics%' THEN 'Electronics Item'
			WHEN category LIKE 'Fur%' THEN 'Furniture Item'
			ELSE 'Accessory Item'
			END AS category_type
FROM products;
