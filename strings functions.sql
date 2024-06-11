select first_name, length(first_name) as 'first name length'
from employee_demographics;

select first_name, upper(first_name) as Upper
from employee_demographics;

select first_name, lower(first_name) as Lower
from employee_demographics;

select trim("    aytan   "); #left and right

select substring(first_name, 3, 2)
from employee_demographics;

select replace(first_name, 'a', 'z')
from employee_demographics;

select locate('a', first_name)
from employee_demographics;

select first_name, last_name, concat(first_name, ' ', last_name) as 'Full name'
from employee_demographics;