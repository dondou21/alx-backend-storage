-- SQL script that creates an index 'idx_name_first' on the table names and the first letter of 'name'
-- Index is not the soluntion for any perfomance issue , but well used, it's really powerfull

CREATE INDEX idx_name_first ON names(name(1));