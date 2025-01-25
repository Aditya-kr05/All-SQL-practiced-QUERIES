-- Window function
   

select gender, avg(salary)
from employee_demographics as ed
join employee_salary as es
on es.employee_id = ed.employee_id
group by gender;



select ed.first_name , ed.last_name, gender, avg(salary) over(partition by gender)
from employee_demographics as ed
join employee_salary as es
on es.employee_id = ed.employee_id
;

# it gives confusing ouput when we use in this

select ed.first_name , ed.last_name,gender, avg(salary)
from employee_demographics as ed
join employee_salary as es
on es.employee_id = ed.employee_id
group by ed.first_name , ed.last_name, gender;




select ed.first_name , ed.last_name, gender, 
sum(salary) over(partition by gender)
from employee_demographics as ed
join employee_salary as es
on es.employee_id = ed.employee_id;




select ed.first_name , ed.last_name, gender,salary, sum(salary) 
over(partition by gender order by ed.employee_id) as rolling_total
from employee_demographics as ed
join employee_salary as es
on es.employee_id = ed.employee_id;

SELECT gender, ROUND(AVG(salary),1)
FROM employee_demographics dem
JOIN employee_salary sal
	ON dem.employee_id = sal.employee_id
GROUP BY gender
;

-- now let's try doing something similar with a window function

SELECT dem.employee_id, dem.first_name, gender, salary,
AVG(salary) OVER(partition by gender)
FROM employee_demographics dem
JOIN employee_salary sal
	ON dem.employee_id = sal.employee_id
;

SELECT dem.employee_id, dem.first_name, gender, salary,
ROW_NUMBER() OVER(PARTITION BY first_name, gender, salary , employee_id)
FROM employee_demographics dem
JOIN employee_salary sal
	ON dem.employee_id = sal.employee_id
;

SELECT dem.employee_id, dem.first_name, gender, salary,
ROW_NUMBER() OVER(PARTITION BY gender)
FROM employee_demographics dem
JOIN employee_salary sal
	ON dem.employee_id = sal.employee_id
;