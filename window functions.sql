select employee_demographics.first_name, employee_demographics.last_name, gender, avg(salary) as avg_salary
from employee_demographics
join employee_salary
	on employee_demographics.employee_id= employee_salary.employee_id
group by employee_demographics.first_name, employee_demographics.last_name;
   
   
select employee_demographics.first_name, employee_demographics.last_name, gender, salary,
avg(salary) over(partition by gender)
from employee_demographics dem
join employee_salary sal
	on dem.employee_id= sal.employee_id 
;


select employee_demographics.first_name, employee_demographics.last_name, gender, salary, 
sum(salary) over(partition by gender order by employee_demographics.employee_id) as rolling_total
from employee_demographics
join employee_salary
	on employee_demographics.employee_id= employee_salary.employee_id 
;


select dem.first_name, dem.last_name, gender, salary, 
row_number() over(partition by gender order by salary desc) as row_num,
rank() over(partition by gender order by salary desc) rank_num,
dense_rank() over(partition by gender order by salary desc) rank_num
from employee_demographics dem
join employee_salary sal
	on dem.employee_id= sal.employee_id 
;