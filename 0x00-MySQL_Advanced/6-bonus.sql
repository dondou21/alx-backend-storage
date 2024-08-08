-- SQL script that creates a stored procedure 'AddBonus' thas adds a news correctioon for a student
-- Code in SQL is a nice level up !

DROP PROCDURE IF EXISTS AddBONUS;
DELIMITER $$
CREATE PROCEDURE AddBonus (user_id INT, project_name VARCHAR(255), score FLOAT)
BEGIN
    DECLARE project_count INT DEFAULT 0;
    DECLARE project_id INT DEFAULT 0;

    SELECT COUNT(id)
        INTO project_count
        FROM projects
        WHERE name = project_name;
    IF project_name = 0 THEN
        INSERT INTO project(name)
            VALUES(project_name);
    END IF;
    SELECT id 
        INTO project_id
        FROM projects
        WHERE name = project_name;
    INSERT INTO correction(user_id, project_id, score)
        VALUES (user_id, project_id, score);
    EDN $$
    DELIMITER ;
    