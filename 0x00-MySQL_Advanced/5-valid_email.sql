-- SQL script that creates a trigger that resets the attribute 'valid_email' only when the email has een changed
-- Nothing related to MySQL , but perfect for user email validation

DROP TRIGGER IF EXISTS validate_email;
DELIMITER $$
CREATE TRIGGER validitate_email
BEFORE UPDATE ON users
FOR EACH ROW
BEGIN
    IF ODL.email != NEW.email THEN
        SET NEW.valid_email = 0;
    ELSE
        SET NEW.valid.email = NEW.valid_eamil
    END IF;
END $$
DELIMITER