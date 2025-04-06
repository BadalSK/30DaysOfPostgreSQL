--Drop Employee table if it exists
DROP TABLE IF EXISTS EMPLOYEES;

-- Create a employees Table
CREATE TABLE EMPLOYEES (
	EMPLOYEE_ID SERIAL PRIMARY KEY,
	FIRST_NAME VARCHAR(50) NOT NULL,
	LAST_NAME VARCHAR(50) NOT NULL,
	DEPARTMENT VARCHAR(50),
	SALARY DECIMAL(10, 2) CHECK (SALARY > 0),
	JOINING_DATE DATE NOT NULL,
	AGE INT CHECK (AGE >= 18)
);

--INSERTING DATA INTO TABLE
INSERT INTO
	EMPLOYEES (
		FIRST_NAME,
		LAST_NAME,
		DEPARTMENT,
		SALARY,
		JOINING_DATE,
		AGE
	)
VALUES
	(
		'Amit',
		'Sharma',
		'IT',
		60000.00,
		'2022-05-01',
		29
	),
	('Neha', 'Patel', 'HR', 55000.00, '2021-08-15', 32),
	(
		'Ravi',
		'Kumar',
		'Finance',
		70000.00,
		'2020-03-10',
		35
	),
	(
		'Anjali',
		'Verma',
		'IT',
		65000.00,
		'2019-11-22',
		28
	),
	(
		'Suresh',
		'Reddy',
		'Operation',
		50000.00,
		'2023-10-10',
		26
	);

	SELECT * FROM employees;

--1)Assignment Questions

--Q1: Retrieve all employees’ first_name and their departments.

SELECT first_name,department FROM employees;

---Q2: Update the salary of all employees in the 'IT' department by increasing it by 10%.
UPDATE employees
SET salary= salary+(salary*0.1)
WHERE department ='IT';

--Q3: Delete all employees who are older than 34 years.
DELETE FROM employees
WHERE age>34;

--Q4: Add a new column `email` to the `employees` table.
ALTER TABLE employees ADD COLUMN email VARCHAR(50);

--Q5: Rename the `department` column to `dept_name`.
ALTER TABLE employees
RENAME COLUMN department TO dept_name;

--Q6: Retrieve the names of employees who joined after January 1, 2021.
SELECT first_name,last_name FROM employees 
WHERE joining_date>='2021-01-01';

--Q7: Change the data type of the `salary` column to `INTEGER`.
ALTER TABLE employees
ALTER COLUMN salary TYPE INTEGER;

--Q8: List all employees with their age and salary in descending order of salary.
SELECT age,salary FROM employees ORDER BY salary DESC;

--Q9: Insert a new employee with the following details: 
		-- ('Raj', 'Singh', 'Marketing', 60000, '2023-09-15', 30)
SELECT * FROM employees;
INSERT INTO employees(FIRST_NAME,
		LAST_NAME,
		DEPT_NAME,
		SALARY,
		JOINING_DATE,
		AGE)
VALUES ('Raj','Singh','Marketing',60000.00,'2023-09-15',30);

--Q10: Update age of employee +1 to every employee 
UPDATE employees
SET age=age+1;