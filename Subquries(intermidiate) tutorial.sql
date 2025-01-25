-- Subquries

select *
from employee_demographics
where employee_id in (select employee_id
from employee_salary
where dept_id=1)
;



select first_name, salary, avg(salary)
from employee_salary
group by first_name,salary                 #we dont need this from comparision
;



select first_name, salary, 
(select avg(salary) from employee_salary) as avg_salary
from employee_salary
;


select gender, avg(age), max(age), min(age), count(age)
from employee_demographics
group by gender;



select *
from (select gender, avg(age), max(age), min(age), count(age)
from employee_demographics
group by gender) as Agg_table;


select gender , avg(`max(age)`)
from (select gender, avg(age), max(age), min(age), count(age)
from employee_demographics
group by gender) as Agg_table
group by gender;

#OR

select gender , avg(max_age)
from (select gender, avg(age) as avg_age
, max(age) as max_age
, min(age) as min_age
, count(age) as count
from employee_demographics
group by gender) as Agg_table
group by gender;




select  avg(`max(age)`)
from (select gender, avg(age), max(age), min(age), count(age)
from employee_demographics
group by gender) as Agg_table
;



