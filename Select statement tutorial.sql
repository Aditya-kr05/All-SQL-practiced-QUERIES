select *
from parks_and_recreation.employee_demographics;

select first_name , age
from parks_and_recreation.employee_demographics;


select first_name,
last_name,
birth_date,
age,
age+10,
age*10+10
from parks_and_recreation.employee_demographics;


#PEMDAS
select gender 
from parks_and_recreation.employee_demographics;

select distinct gender 
from parks_and_recreation.employee_demographics;

select distinct gender,
first_name 
from parks_and_recreation.employee_demographics;

