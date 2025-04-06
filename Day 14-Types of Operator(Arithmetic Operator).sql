SELECT * FROM employee3 ORDER BY employee_id ASC;

---Arithmatic Operator:-
UPDATE employee3
SET age=age + 1
WHERE joining_date >='2020-01-01';

---Q1-Calculate 10% Bonus of Salary

SELECT first_name,last_name,salary,(salary*0.05) AS Bonus FROM employee3;

---Q2-Calculate Annual Salary and Salary increment by 5% -show the monthly new salary as well.

SELECT first_name,last_name,salary,(salary*12) AS Annual_salary, (salary * 0.05) AS Salary_increment, 
       (salary + salary * 0.05) AS new_salary,
	   (salary * 1.05) AS new_salary2
FROM employee3;