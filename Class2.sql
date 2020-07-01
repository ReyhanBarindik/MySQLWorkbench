-- use syntaxhrm_mysql;

select * from syntaxhrm_mysql.hs_hr_employees;

select emp_firstname, emp_lastname 
from hs_hr_employees
order by emp_firstname desc;

select distinct emp_firstname, emp_lastname 
from hs_hr_employees
order by emp_firstname desc;

select emp_firstname, emp_lastname 
from hs_hr_employees
where emp_firstname = 'Reyhane'
order by emp_firstname asc;

select emp_firstname 
from hs_hr_employees
where emp_birthday is null;

select emp_firstname, emp_lastname
from hs_hr_employees
where emp_birthday is not null;



