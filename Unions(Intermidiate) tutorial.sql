#UNIONS
select *
from employee_demographics;
select *
from employee_salary;




select *
from employee_demographics
union
select *
from employee_salary;




select age , gender 
from employee_demographics
union
select first_name,last_name
from employee_salary;



select first_name,last_name
from employee_demographics
union all
select first_name , last_name
from employee_salary;


select first_name,last_name, 'old man' as lable
from employee_demographics
where age>40 and gender = 'male'
union
select first_name,last_name, 'old lady' as lable 
from employee_demographics
where age > 40 and gender ='female'
union
select first_name, last_name, 'Highly payable' as lable
from employee_salary
where salary > 70000
order by first_name
;


