DROP TABLE IF EXISTS student_2024;

CREATE TABLE student_2024(
    student_id INT PRIMARY KEY,
	student_name VARCHAR(50),
	course VARCHAR(50)
);
INSERT INTO student_2024(student_id,student_name,course)
VALUES (1,'Aarav Sharma','Computer Science'),
        (2,'Ishita Verma','Mechanical Engg'),
		(3,'Kabir Patel','Electronics'),
		(4,'Ananya Dasai','Civil Engg'),
		(5,'Rahul Gupta','Computer Science');

SELECT * FROM student_2024;

DROP TABLE IF EXISTS student_2025;
CREATE TABLE student_2025(
    student_id INT PRIMARY KEY,
	student_name VARCHAR(50),
	course VARCHAR(50)
);

INSERT INTO student_2025(student_id,student_name,course)
VALUES  (3,'Kabir Patel','Electronics'),
		(4,'Ananya Dasai','Civil Engg'),
		(6,'Meera Rao','Computer Science'),
		(7,'Vikram Singh','Mathematics'),
		(8,'Saniya Kapoor','Physics');

SELECT * FROM student_2025;


-- UNION -- Combines results , Remove Duplicates

SELECT student_id, student_name, course
FROM student_2024
UNION
SELECT student_id,student_name, course
FROM student_2025 ORDER BY student_id ASC;

-- UNION ALL -- Combines results and Keeps Duplicates

SELECT student_name, course
FROM student_2024
UNION ALL
SELECT student_name, course
FROM student_2025;

-- INTERSECT -- Returns Common Results in both Tables

SELECT student_name, course
FROM student_2024
INTERSECT
SELECT student_name, course
FROM student_2025;

-- EXCEPT -- Returns results in the First table but not in the second
SELECT student_name, course
FROM student_2024
EXCEPT
SELECT student_name, course
FROM student_2025;