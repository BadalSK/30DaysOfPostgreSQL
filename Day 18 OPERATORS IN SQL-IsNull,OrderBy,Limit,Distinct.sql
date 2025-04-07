---OPERATORS IN SQL
SELECT * FROM employee3;

---1) Find employee where last_name, department column IS NULL
SELECT first_name,last_name,department
FROM employee3
WHERE last_name IS NULL OR department IS NULL ;

---2) List employees sortingby Salary in DECENDING Order.
SELECT first_name,last_name,salary
FROM employee3
ORDER BY salary DESC;

---3)Retrieve the top 5 highest -paid employees.
SELECT first_name,last_name,salary
FROM employee3
ORDER BY salary DESC
LIMIT 5;


---4)Retrieve a list of UNIQUE departments
SELECT DISTINCT department
FROM employee3;

SELECT COUNT (DISTINCT department)
FROM employee3;

SELECT COUNT (DISTINCT department) AS unique_values
FROM employee3;

SELECT * FROM employee3;
