# Limit and Aliasing

select *
from employee_demographics;

select *
from employee_demographics
limit 3
;

select *
from employee_demographics
order by age desc
limit 3;

select *
from employee_demographics
order by age desc
limit 1,2
;


#Aliasing for changing coloumn name 

select gender, avg(age) as Mean_age
from employee_demographics
group by gender
having mean_age>40
;
