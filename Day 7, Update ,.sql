SELECT * FROM employee

CREATE TABLE users(
    user_id INT PRIMARY KEY,
	name VARCHAR(50) NOT NULL,
	email VARCHAR(100) UNIQUE,
	age INTEGER CHECK(age>=18),
	reg_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
	description TEXT
);
 SELECT * FROM users;

 INSERT INTO users(user_id,name,email,age,description)
         VALUES (1,'SD','EADFAC@HGH.COM',23,'fgftsfyuisgius');



DROP TABLE IF EXISTS users1;

CREATE TABLE IF NOT EXISTS user1(
     user_id INT PRIMARY KEY,
	 name VARCHAR(50) NOT NULL,
	 email VARCHAR(100) UNIQUE,
	 city CHAR(10),
	 age INTEGER
);

SELECT * FROM user1;

INSERT INTO user1(user_id,name,email,city,age)
VALUES (1,'Austin','aus@gmail.com','Nagpur',29),
(2,'Priya','priya@gmail.com','Pune',18),
(3,'Pooja','pooja@yahoo.com','Bangalore',30),
(4,'Vivek','vivek@gmail.com','Amt',35),
(5,'Sonu','sonu@yahoo.com','Jaipur',17),
(6,'Golu','gilu@gmail.com','Kullu',25);

SELECT user_id FROM user1;

UPDATE user1
SET age = 28
WHERE name='Austin';

SELECT * FROM user1 ORDER BY user_id ASC;

UPDATE user1
SET city = 'Raipur'
WHERE age>=30;

Update user1
set age=18,city='Nagpur'
Where name='Priya';

UPDATE user1
SET age = age+1
WHERE email LIKE ('%@gmail.com');
