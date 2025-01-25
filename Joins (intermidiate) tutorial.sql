#JOINS

select *
from employee_demographics;

select *
from employee_salary;


select *
from employee_demographics as ed
INNER JOIN employee_salary  as es
   on ed.employee_id = es.employee_id
   ;

select ed.employee_id,age,occupation,ed.first_name
from employee_demographics as ed
INNER JOIN employee_salary  as es
   on ed.employee_id = es.employee_id
   ;



#OUTER JOINS-(LEFT JOIN AND RIGHT JOIN)


select *
from employee_demographics as ed
LEFT JOIN employee_salary  as es
   on ed.employee_id = es.employee_id
   ;
   
select *
from employee_demographics as ed
RIGHT JOIN employee_salary  as es
   on ed.employee_id = es.employee_id
   ;   
   
#SELF JOIN 

select * 
from employee_salary as emp1
join employee_salary as emp2
  on emp1.employee_id = emp2.employee_id
;

select * 
from employee_salary as emp1
join employee_salary as emp2
  on emp1.employee_id +1 = emp2.employee_id
;


select emp1.employee_id , emp1.first_name, emp1.last_name,
       emp2.employee_id , emp2.first_name, emp2.last_name
from employee_salary as emp1
join employee_salary as emp2
  on emp1.employee_id+1 = emp2.employee_id
;

#JOINING MULTIPLE TABLE TOGETHER 

select *
from employee_salary as es
join parks_departments as pd
on es.dept_id = pd.department_id
;


select *
from employee_demographics as ed
INNER JOIN employee_salary  as es
   on ed.employee_id = es.employee_id
inner join parks_departments as pd
   on es.dept_id = pd.department_id
;

   
   
   
   
   
   
   
   
   
   
   