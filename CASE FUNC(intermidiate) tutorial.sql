#CASE FUNCTION

SELECT first_name,
last_name,age,
CASE 
    WHEN age<=30 THEN 'YOUNG'
    WHEN age BETWEEN 31 AND 50 THEN 'OLD'
    WHEN age>50 THEN "ON DEATH'S DOOR"
END AS age_bracket
FROM employee_demographics;    

#GIVEN SITUATION 
-- < 50000 = 5% HIKE
-- > 50000 = 7% HIKE
-- FOR FINANCE = 10% BONUS



select first_name, last_name, salary,
CASE 
    when salary < 50000 then salary*1.05
    when salary > 50000 then salary*1.07
END as new_salary,
CASE
    when dept_id = 6 then salary*0.10
END as bonus 
from employee_salary
;
