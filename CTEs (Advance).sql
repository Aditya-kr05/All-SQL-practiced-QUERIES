Use parks_and_recreation;

#CTEs(Common table expression)

WITH CTE_example as
(Select gender,AVG(salary), Min(salary) , max(salary),count(salary)
from employee_demographics dem 
join employee_salary sal
on dem.employee_id=sal.employee_id
group by gender 
)
select *
from CTE_example;


#Now let us see how this is helpful
# How we can find the AVG of avg(salary) from our output there are two option using subquries and CTEs.

#1) Using CTEs
WITH CTE_example as
(Select gender,AVG(salary) avg_sal, Min(salary) min_sal , max(salary) max_sal,count(salary) count_sal
from employee_demographics dem 
join employee_salary sal
on dem.employee_id=sal.employee_id
group by gender 
)
select AVG(avg_sal)
from CTE_example;

#2) using Subquries

Select AVG(avg_sal)
from
(Select gender,AVG(salary) avg_sal, Min(salary) min_sal , max(salary) max_sal,count(salary) count_sal
from employee_demographics dem 
join employee_salary sal
on dem.employee_id=sal.employee_id
group by gender 
) as Example_subquries;

#If data is large then it is easy to use CTEs 


WITH CTE_example as
(Select employee_id,gender,birth_date
from employee_demographics 
where birth_date > '1985-01-01'
),
CTE_example2 as
(Select employee_id, salary
from Employee_salary
where salary > 50000
)
select *
from CTE_example
join CTE_example2
on CTE_example.employee_id =CTE_example2.employee_id
;








