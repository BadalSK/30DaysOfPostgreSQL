---Import CSV File intO SQL Database:-
DROP TABLE IF EXISTS employee3;
CREATE TABLE employee3(
employee_id	INT	PRIMARY KEY,
first_name	VARCHAR(20)	NOT NULL,
last_name	VARCHAR(20)	NOT NULL,
department	VARCHAR(20)	,
salary	NUMERIC(10,2)	,
joining_date DATE,
age	INT	
);

SELECT * FROM employee3;

COPY
employee3(employee_id,
first_name,
last_name,
department,
salary,
joining_date,
age
)
FROM 'C:\Workspace\datasets\Day 12 - employee_data.csv'
DELIMITER ','
CSV HEADER;

SELECT * FROM employee3 limit(5);

SELECT age FROM employee3 WHERE age>=40;

TRUNCATE TABLE employee3;


----Import CSV File without Query
---1)Create Table
---2) Goto Table name -> Right Click -> Import/Export
---Header -> Option 'NO' (optional)
