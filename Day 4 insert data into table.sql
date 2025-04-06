SELECT * FROM Employee;

INSERT INTO Employee(Full_Name,position,department,hire_date,salary)
        VALUES('Amit Sharma','Data Analyst','Data Science','2025-03-20','65000.00'),
		('Austin','Data Scientist','Data Science','2025-6-17','92000.00'),
		('Sam Willson','HR','HR Dept','2023-5-29','30000.00');

ALTER TABLE Employee
RENAME COLUMN fullname TO Full_Name;

--- Clear Table Data:-
TRUNCATE TABLE Employee;
---restart or reset serial no.
TRUNCATE TABLE Employee RESTART IDENTITY;