select first_name, salary,
(select avg(salary)
from employee_salary)
from employee_salary;

select gender, avg(age), max(age), min(age)
from employee_demographics
group by gender;

select gender, avg(`max_age`)
from (select gender, avg(age) as avg_age, max(age) as max_age, min(age) as min_age
from employee_demographics
group by gender) as New_table
group by gender;