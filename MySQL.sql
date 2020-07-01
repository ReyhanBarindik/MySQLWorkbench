use syntaxhrm_mysql;

select count(*), job_title_code
from  hs_hr_employees
group by job_title_code;

-- we want to count how many employees married, single, do not have marital status

select count(*), emp_marital_status
from hs_hr_employees
group by emp_marital_status;

select count(*), emp_marital_status
from hs_hr_employees
where emp_marital_status = "Married"
group by emp_marital_status;