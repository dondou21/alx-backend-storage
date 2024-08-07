-- SQL script that creates a table 'users' with 'id' integer , never null, auto increment and primary key 
-- 'email' string (255 characters), nevr null and unique, 'name' string(255 characters. If the table already exist, the script should not fall

DROP TABLE IF EXIST users;
CREATE TABLE userss(
	id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	email VARCHAR(255)NOT NULL UNIQUE,
	name VARCHAR(255) 
);
