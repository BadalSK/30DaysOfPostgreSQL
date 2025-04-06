---Logical Operator
SELECT * FROM employee3;

---Using AND Operator
SELECT * FROM employee3
WHERE age > 40 AND salary >= 50000;

SELECT * FROM employee3
WHERE age >= 60 AND salary >= 90000;

---Using OR operator
SELECT * FROM employee3
WHERE age > 40 OR salary >= 50000;

SELECT * FROM employee3
WHERE age >= 60 OR salary >= 90000;

---NOT Operator
SELECT * FROM employee3
WHERE NOT (department='IT');

SELECT * FROM employee3
WHERE NOT (AGE>=30);