-- SQL script that creates a table 'users' with
-- 'id' integer , never null, auto increment and primary key 
-- 'email' string(255 characters), never null and unique
-- 'name' string(255 characters)
-- country enumeration of countries: US, CO, Tn, never null (default will be US)
-- If the table already exist the script should not fail

DROP TABLE IF EXISTS users;
CREATE TABLE users (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY;
    email VARCHAR(255) NOT NULL UNIQUE;
    name VARCHAR(255);
    counrty CHAR(2) NOT NULL DEFAULT 'US' CHECK (country IN ('US', 'CO', 'TN'))
);