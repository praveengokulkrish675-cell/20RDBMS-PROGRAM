CREATE DATABASE GOKUL;
USE GOKUL;
REATE TABLE Employee_Log (
    message VARCHAR(100)
);

DELIMITER //

CREATE TRIGGER after_employee_insert
AFTER INSERT ON Employee
FOR EACH ROW
BEGIN
    INSERT INTO Employee_Log(message)
    VALUES ('New employee record inserted successfully');
END //

DELIMITER ;

INSERT INTO Employee (emp_id, emp_name)
VALUES (101, 'Ravi');

SELECT message FROM Employee_Log;
