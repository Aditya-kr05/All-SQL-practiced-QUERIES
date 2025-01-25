#STRING FUNCTON

select first_name, length(first_name)
from employee_demographics
order by 2 desc;


select first_name, upper(first_name)
from employee_demographics;


select trim('         sky         ');
select ltrim('         sky         ');
select rtrim('         sky         ');

select first_name, 
left(first_name,4), 
right(first_name,4)
from employee_demographics;


select first_name, 
substring(first_name,3,2)
from employee_demographics;


select first_name, 
substring(birth_date,6,2) as birth_month
from employee_demographics;


select first_name , replace(first_name,'a','n')
from employee_demographics;

select first_name ,
 locate('nn',first_name)
from employee_demographics;



select first_name, last_name,
concat(first_name, ' ',last_name) as full_name
from employee_demographics;
