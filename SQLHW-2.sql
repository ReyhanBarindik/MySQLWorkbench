use syntaxhrm_mysql;
-- Display all employees whose last name ends with ‘a’.
select * from hs_hr_employees 
where emp_lastname like '%a';

-- Display all HRMS offices except those located in US, Canada and Brazil.
select * from ohrm_location
where not country_code in ('US', 'Canada', 'Brazil');

-- Verify all employees who was born from January 1st of 1980 until December 31st of 2000.
select * from hs_hr_employees
where emp_birthday between '1980-01-01' and '2000-12-31';

-- Display all nationalities that start with ‘C’?
select * from ohrm_nationality
where name like 'C%';

-- Display all employees’ whose birthday is in August and do not forget to sort employee’s last name from A-Z.
select * from hs_hr_employees
where emp_birthday like '%08-__'
order by emp_lastname asc;

-- Verify all the employees who are managers.
select * from ohrm_job_title
where job_title like '%manager%';
select * from hs_hr_employees
where job_title_code in (3, 6, 7, 14, 15, 16, 18);

-- How to display first name, last name, dob of employees who is a Freelancer or developer.
select * from ohrm_job_title
where job_title in ('Freelancer', 'developer');
select emp_firstname, emp_lastname, emp_birthday
from hs_hr_employees
where job_title_code = '10';

