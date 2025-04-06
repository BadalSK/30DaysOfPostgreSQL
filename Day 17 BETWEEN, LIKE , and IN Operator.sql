--- BETWEEN, LIKE , and IN Operator

SELECT * FROM employee3;

---1) Retrieve employees whose salary is between 40000 and 60000- Use BETWEEN
SELECT first_name, last_name, salary 
FROM employee3
WHERE salary BETWEEN 40000 AND 60000;

---examples
SELECT first_name,last_name, age 
FROM employee3
WHERE age BETWEEN 30 AND 50;

---2) Find employees whose Name starts with 'J'- Use LIKE Operator
SELECT first_name,last_name 
FROM employee3
WHERE first_name LIKE 'J%';

---examples
SELECT first_name,last_name 
FROM employee3 
WHERE last_name LIKE '%n';

SELECT first_name,last_name 
FROM employee3
WHERE (last_name) LIKE '%a%';

---Retrieve employee who belongs to either 'Finance' or 'Marketing' depaertment -Use IN operator
SELECT first_name,last_name, department
FROM employee3 
WHERE department IN ('Finance','Marketing','IT');