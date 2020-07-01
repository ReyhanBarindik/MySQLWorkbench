use syntaxhrm_mysql;

-- to combine data from multiple tables in sql we can use subqueries, joins, set operators

-- we want to display info of all employees who are IT Analyst 

select *
from hs_hr_employees
where job_title_code = (
select id                                -- you select id with condition (title) 
from ohrm_job_title
where job_title = 'IT Analyst'
);

-- we want to display emp number, first and last name of employees who are Turkish
select emp_number, emp_firstname, emp_lastname 
from hs_hr_employees
where nation_code = (
select id
from ohrm_nationality
where ohrm_nationality.name = 'Turkish'
);

-- how to find second largest salary ?
select max(ebsal_basic_salary)
from hs_hr_emp_basicsalary
where ebsal_basic_salary < (            -- it could be any condition (=, <, >, IN) 
select max(ebsal_basic_salary)
from hs_hr_emp_basicsalary
);

select *
from hs_hr_employees
where job_title_code = (
select id 
from ohrm_job_title
where job_title = 'Cloud Architects'
);

-- how to retrieve info of employee who earns the lowest salary ?
select *
from hs_hr_employees
where emp_number =(    -- whwn you are write where and open sub your select should be connectable with where cond.
select emp_number
from hs_hr_emp_basicsalary
where ebsal_basic_salary = (
select min(ebsal_basic_salary)
from hs_hr_emp_basicsalary
)
);






