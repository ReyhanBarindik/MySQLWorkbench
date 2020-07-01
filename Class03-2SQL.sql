use syntaxhrm_mysql;

-- I want to see where the employee count is more than 3

select count(*), job_title_code
from hs_hr_employees
group by job_title_code
having count(*) > 3;

-- display youngest employees in each job title
-- but display only who were born after 2000 

select max(emp_birthday), job_title_code
from hs_hr_employees
group by job_title_code
having max(emp_birthday) > '2000';  -- we are filtering rows 

-- I want to display employees count per job title code but I only want to see job titles code where count more than 3. 
-- And exclude count of null job titles

select count(*), job_title_code
from hs_hr_employees
where job_title_code is not null
group by job_title_code
having count(*) > 3;

-- find out youngest employee in each job title 
-- display only employees DOB who is older than 2000

select max(emp_birthday), job_title_code
from hs_hr_employees
group by job_title_code
having max(emp_birthday) < '2000-01-01';








