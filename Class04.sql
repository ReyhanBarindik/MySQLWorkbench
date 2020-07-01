use syntaxhrm_mysql;

-- avarage that we pay period 
select avg(ebsal_basic_salary), payperiod_code
from hs_hr_emp_basicsalary
group by payperiod_code;

-- only avarage salaries that are more than 5000
select avg(ebsal_basic_salary), payperiod_code
from hs_hr_emp_basicsalary
group by payperiod_code
having avg(ebsal_basic_salary) > 5000;

-- Inner Join 
-- display first, last names, the nationalitiy for each employee
select emp_firstname, emp_lastname, name 
from hs_hr_employees inner join ohrm_nationality
on hs_hr_employees.nation_code = ohrm_nationality.id;

-- display first, last name, job title of the employees
select emp_firstname, emp_lastname, job_title
from hs_hr_employees inner join ohrm_job_title
on hs_hr_employees.job_title_code = ohrm_job_title.id;


select emp_firstname, emp_lastname, job_title
from hs_hr_employees emp inner join ohrm_job_title title
on emp.job_title_code = title.id;

















