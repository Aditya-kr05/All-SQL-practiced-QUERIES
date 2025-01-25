#Having and where 

select gender ,avg(age)
from employee_demographics
where avg(age)>40                                     #Gives error
group by gender;


select gender ,avg(age)
from employee_demographics
group by gender
having avg(age)>40;

select occupation , avg(salary)
from employee_salary
where occupation like '%manager%'
group by occupation;


select occupation , avg(salary)
from employee_salary
where occupation like '%manager%'
group by occupation
having avg(salary)>75000;


select gender ,avg(age)
from employee_demographics
where age>40
group by gender
having avg(age)>50;

select gender ,avg(age)
from employee_demographics
having avg(age)>50
group by gender;                            #Gives error