use syntaxhrm_mysql;
-- List all employees who are Cloud Architects?
select *
from hs_hr_employees
where job_title_code = (
select ohrm_job_title.id
from ohrm_job_title
where ohrm_job_title.job_title = 'Cloud Architects'
);

-- How to retrieve information of the employee who earns the lowest  salary?
select *
from hs_hr_employees
where emp_number = (
select emp_number
from hs_hr_emp_basicsalary
where ebsal_basic_salary = (
select min(ebsal_basic_salary)
from hs_hr_emp_basicsalary
)
);

-- List all employees who are Self Employed?
select *
from hs_hr_employees
where emp_status = (
select ohrm_employment_status.id
from ohrm_employment_status
where name = 'Self Employed'
);

-- Display emergency contact name and phone number of Adam Adams
select eec_name, eec_mobile_no
from hs_hr_emp_emergency_contacts
where emp_number = (
select emp_number
from hs_hr_employees
where emp_firstname = 'Adam' and emp_lastname = 'Adams'
);

-- How can you display the third highest salary? 
select max(ebsal_basic_salary) 
from hs_hr_emp_basicsalary
where ebsal_basic_salary < (
select max(ebsal_basic_salary)
from hs_hr_emp_basicsalary
where ebsal_basic_salary < (
select max(ebsal_basic_salary)
from hs_hr_emp_basicsalary
)
);






