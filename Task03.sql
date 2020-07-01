-- Display last name in uppercase, first name in lowercase.
select upper(emp_lastname), lower(emp_firstname)
from hs_hr_employees;

-- Verify how many employees don’t have any title assigned?
select count(*)
from hs_hr_employees
where job_title_code is null;

-- Verify how many employees are married
select count(*), emp_marital_status
from hs_hr_employees
where emp_marital_status = 'married'
group by emp_marital_status;

-- Display youngest employee in the company
select max(emp_birthday), emp_firstname
from hs_hr_employees;

-- Verify how many Developers we have?
select count(*)
from hs_hr_employees
where job_title_code = 10;

-- How many employees first name starts with A? 
select count(*)
from hs_hr_employees
where emp_firstname like 'A%';

-- Verify how many Database administrators, Application Developers, Production Manager
select count(*),job_title_code
from hs_hr_employees
where job_title_code in(5, 9, 14)
group by job_title_code;


