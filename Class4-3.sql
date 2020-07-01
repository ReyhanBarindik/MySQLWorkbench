use syntaxhrm_mysql;
-- INNER JOIN
-- we want to display info of employees first name, last name and nationality 
-- 1. see if tables are related 
-- 2. find PK & FK 
-- 3. identifies which columns are coming from which table 

select emp_firstname, emp_lastname, name as nationality
from hs_hr_employees emp
inner join ohrm_nationality nati
on emp.nation_code = nati.id;  -- we retrieve only coomon data from these 2 table 

-- display emp_number, fname, lname, job_title
-- before do that you can look at the tables and columns like --> select * from hs_hr_employees  select*from ohrm_job_title
select emp_number, emp_firstname, emp_lastname, job_title
from hs_hr_employees emp
inner join ohrm_job_title title
on emp.job_title_code = title.id;










