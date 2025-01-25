# Temp Table

Create temporary table temp_table
(First_name varchar(50),
last_name varchar(50),
Fav_movie varchar(100)
);

insert into temp_table
values ('Aditya', 'Kumar' , 'KGF');

select*
from temp_table;

select *
from employee_salary;



Create temporary table salary_above_50k
select * 
from employee_salary
where salary > 50000
;

select *
from salary_above_50k;

