use syntaxhrm_mysql;

select * from hs_hr_employees;
-- displaying only first names from employees table
select emp_firstname from hs_hr_employees;

select emp_firstname, emp_lastname from hs_hr_employees;

SELECT employee_id FROM hs_hr_employees;

select * from hs_hr_employees;

select emp_lastname from hs_hr_employees;

select job_title from ohrm_job_title;

select employee_id, emp_firstname, emp_lastname from hs_hr_employees;

select * from hs_hr_emp_language;

select * from hs_hr_emp_dependents;

select * from ohrm_language;
-- distinct for eliminate any dublicate 
select distinct emp_firstname from hs_hr_employees;

-- display all the information about employee who has employee id 13473
select * from hs_hr_employees
where employee_id = 14476;

select emp_firstname, emp_lastname
from hs_hr_employees
where emp_firstname= 'Reyhane';









