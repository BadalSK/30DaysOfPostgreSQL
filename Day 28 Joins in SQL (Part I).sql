-- Day 28 – Joins in SQL (Part I)

/* Types of SQL Joins:-
   1. INNER JOIN: Retrieves records with matching values in both tables.
   2. LEFT JOIN (LEFT OUTER JOIN): Retrieves all records from the left table and matching records from the right table. 
      Non-matching records in the right table result in NULL
   3. RIGHT JOIN (RIGHT OUTER JOIN): Retrieves all records from the right table and matching records from the left table. 
      Non-matching records in the left table result in NULL.
   4. FULL JOIN (FULL OUTER JOIN): Retrieves all records from both tables, with NULL for non-matching rows in either table.
   5. CROSS JOIN: Combines all rows from both tables, resulting in a Cartesian product.
   6. SELF JOIN: Joins a table to itself. */


-- 1) Creating 2 tables employee4 and departments.
SELECT * FROM employee4;

CREATE TABLE IF NOT EXISTS employee4(
           employee_id SERIAL PRIMARY KEY,
		   first_name VARCHAR(50),
		   last_name VARCHAR(50),
		   department_id INTEGER
)

INSERT INTO employee4(first_name,last_name,department_id)
VALUES('Rahul','Sharma',101),
      ('Priya','Mehta',102),
	  ('Ankit','Verma',103),
	  ('Simran','kaur',NULL),
	  ('Aman','Singh',101);


CREATE TABLE IF NOT EXISTS Departments(
      department_id INTEGER,
	  department_name VARCHAR(50)
);
INSERT INTO Departments(department_id,department_name)
VALUES(101,'Sales'),
      (102,'Marketing'),
	  (103,'IT'),
	  (104,'HR');

SELECT * FROM Departments;


/* 1. INNER JOIN - Retrieve Employees3 and their department names where a match exists.(Exists in both tables(COMMON COLUMN NEED))*/

SELECT e.employee_id,e.first_name,e.last_name,
       d.department_id,d.department_name
FROM employee4 e
INNER JOIN
departments d
ON e.department_id = d.department_id;


/* 2. LEFT JOIN - Retrieve all Employees3 and their department names, 
      including those without a department. */

SELECT e.employee_id,e.first_name,e.last_name,
       d.department_id,d.department_name
FROM employee4 e
LEFT JOIN 
departments d
ON e.department_id = d.department_id;

/* 3. RIGHT JOIN - Retrieve all departments and the Employees3 working in them,
       including departments without */

SELECT e.employee_id,e.first_name,e.last_name,
       d.department_id,d.department_name
FROM employee4 e
RIGHT JOIN 
departments d
ON e.department_id = d.department_id;
