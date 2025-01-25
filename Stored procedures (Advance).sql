#Stored procedures
USE parks_and_recreation;
Select *
from employee_salary
where salary >= 50000;

CREATE PROCEDURE large_salary()
Select *
from employee_salary
where salary >= 50000;

call large_salary();
#But this is very simple this is not what we use in real world scenario
# we can use it whe there is a complex situation let's see



DELIMITER $$
CREATE PROCEDURE large_salary2()
BEGIN 
Select *
from employee_salary
where salary >= 50000;
Select *
from employee_salary
where salary >= 10000;
END $$
DELIMITER ;


CALL large_salary2();

#Parameter given 

DELIMITER $$
CREATE PROCEDURE large_salary3(P_employee_ID INT)
BEGIN 
Select salary
from employee_salary
where employee_id=P_employee_ID
;
END $$
DELIMITER ;

call large_salary3(1);






