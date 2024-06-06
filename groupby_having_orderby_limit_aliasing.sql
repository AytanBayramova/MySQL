select distinct gender
from
employee_demographics;

select *
from employee_demographics
where age>20;


select *
 from employee_demographics
 where first_name like "%om";
 
 select gender, AVG(age)
 from employee_demographics
 group by gender;
 
 select *
 from employee_demographics
 order by first_name desc;
 
 select *
 from
 employee_demographics
 order by 5, 4;
 
 select gender, avg(age)
 from
 employee_demographics
 group by gender
 having avg(age) >40;
 
 select occupation, avg(salary)
 from employee_salary
 where occupation like "%manager%"
 group by occupation
 having avg(salary) >75000;
 
 select *
 from employee_demographics
 order by age desc
 limit 2, 1;
 
 select gender, avg(age) as avg_age
 from employee_demographics
 group by gender
 having avg_age >40;
  
 
