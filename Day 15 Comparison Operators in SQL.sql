---Comparison Operators in SQL

SELECT * FROM employee3;

---Matches age 30
SELECT * FROM employee3
WHERE age = 30;

---Mtaches all except 30
SELECT * FROM employee3
WHERE age != 30;

---Salary greater than 50000
SELECT * FROM employee3
WHERE salary > 50000;

---Age less than 40
SELECT * FROM employee3
WHERE age<40;

---Age 25 and above
SELECT * FROM employee3
WHERE age>=25;

---Salary 60000 or less
SELECT * FROM employee3
WHERE salary<=60000;