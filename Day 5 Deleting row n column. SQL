CREATE TABLE Employee2(
            Employee_id INT PRIMARY KEY,
			Full_Name VARCHAR(50),
			position VARCHAR(50),
			department VARCHAR(50),hire_date DATE,salary NUMERIC);
ALTER TABLE Employee2
add COLUMN Salary NUMERIC;
SELECT * FROM Employee2;

INSERT INTO Employee2(Employee_id,Full_Name,position,department,hire_date,salary)
        VALUES('101','Amit Sharma','Data Analyst','Data Science','2025-03-20','65000.00'),
		('102','Austin','Data Scientist','Data Science','2025-6-17','92000.00'),
		('103','Sam Willson','HR','HR Dept','2023-5-29','30000.00');

--- Delete Specific RECORD
DELETE FROM Employee2
WHERE EMPLOYEE_ID=103;

---Delete Column
ALTER TABLE Employee2
DROP COLUMN salary;

---Delete Table
DROP TABLE IF EXISTS Employee3;

---Delete Database
DROP DATABASE IF EXISTS EMPLOYEE3;

---clear table data
TRUNCATE TABLE Employee2;
