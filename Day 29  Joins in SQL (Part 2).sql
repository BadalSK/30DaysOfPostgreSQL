-- Day 29 – Joins in SQL (Part II)

/* *Using FULL OUTER JOIN for complete data merging.
   *Understanding CROSS JOIN and when to use it.
   *Implementing self-joins for hierarchical data.*/


SELECT * FROM employee4;
SELECT * FROM departments;

/* 4. FULL OUTER JOIN - Retrieve all employee4 and departments.
including non-matching records from both tables. */

SELECT e.first_name, e.last_name, d.department_id, d.department_name
FROM employee4 e
FULL OUTER JOIN
departments d
ON e.department_id=d.department_id;

/* 5. CROSS JOIN - Retrieve all possible combinations of employee4 and departments.
*/
SELECT e.first_name, e.last_name, d.department_id, d.department_name
FROM employee4 e
CROSS JOIN
departments d;

/* 6. SELF JOIN - Find employee4 who share the same department.*/

SELECT e1.first_name AS Employee_name1,
       e2.first_name AS Employee_name2

FROM employee4 e1 JOIN employee4 e2
ON e1.department_id=e2.department_id AND e1.employee_id != e2.employee_id ;