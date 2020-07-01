use syntaxhrm_mysql;

-- Display employees number, first name and lastname and their employment status name. Sort results based on the last name.
select emp_number, emp_firstname, emp_lastname , emp_status
from hs_hr_employees emp
inner join ohrm_employment_status sta
on emp.emp_status = sta.id
order by emp_lastname asc;

-- Display employees number, first name and lastname and job title only for Developers and Application Developers.
select emp_number, emp_firstname, emp_lastname, job_title
from hs_hr_employees emp 
inner join ohrm_job_title title
on emp.job_title_code = title.id
where title.job_title in ('Developer', 'Application Developer');

-- Display employees number, first name and nationality only for employees whose nationality starts with A.
select emp_number, emp_firstname, name as nationality
from hs_hr_employees emp
inner join ohrm_nationality nati
on emp.nation_code = nati.id
where nati.name like 'A%';






