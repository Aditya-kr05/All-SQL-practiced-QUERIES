-- where clause 

select *
from parks_and_recreation.employee_demographics
where first_name='leslie';

select *
from employee_salary
where salary >=50000;

select *
from employee_demographics
where birth_date > '1985-10-05' or gender='female'
;

select *
from employee_demographics
where birth_date > '1985-10-05' And gender='female'
;

select *
from employee_demographics
where birth_date > '1985-10-05' or NOT gender='male'
;

select *
from employee_demographics
where ( birth_date > '1985-10-05' and gender='female') or age>=45
;

#Like Statement (% and _)

select *
from employee_demographics
where first_name like 'jer%';

select *
from employee_demographics
where first_name like '%er%';

select *
from employee_demographics
where first_name like 'a%';

select *
from employee_demographics
where first_name like 'a__';

select *
from employee_demographics
where first_name like 'a___';

select *
from employee_demographics
where birth_date like '1985%';
