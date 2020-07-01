use syntaxhrm_mysql;

select * from hs_hr_employees;

select upper(emp_firstname), (emp_lastname), lower(emp_lastname) 
from hs_hr_employees;

-- display the count of all the employees from the db (data base)
select count(*) from hs_hr_employees;

-- display the count of employees who has a marital status 

select count(*)
from hs_hr_employees
where emp_marital_status is not null;

select count(*), emp_marital_status
from hs_hr_employees
group by emp_marital_status;

-- display the maximum salary 
select max(ebsal_basic_salary)
from hs_hr_emp_basicsalary;

select *
from hs_hr_emp_basicsalary;

select count(*), emp_marital_status
from hs_hr_employees
where emp_marital_status is not null
group by emp_marital_status;

-- display the youngest employee from our db 
select max(emp_birthday), emp_firstname
from hs_hr_employees;

-- display the oldest employee from our db
select min(emp_birthday), emp_firstname
from hs_hr_employees;

select max(emp_birthday), min(emp_firstname)
from hs_hr_employees;

-- display the gender of employees (male or female)
select count(*), emp_gender
from hs_hr_employees
where emp_gender is not null
group by emp_gender;

-- display the count of employees who are developers and bakery chefs
select *
from ohrm_job_title;

select count(*), job_title_code
from hs_hr_employees
where job_title_code in (10, 24)
group by job_title_code;

