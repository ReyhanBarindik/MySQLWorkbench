use syntaxhrm_mysql;

select * from hs_hr_employees
where job_title_code is null;

select emp_firstname, emp_lastname
from hs_hr_employees
where emp_hm_telephone is null
order by emp_firstname asc;

select * from hs_hr_employees
where emp_birthday is not null
order by emp_lastname desc;

-- display employee whose first name is John and last name is Doe
select * from hs_hr_employees
where emp_firstname = 'John' and emp_lastname = 'Yakut';

-- display al the info from employees whose emp_ids are 13288 13290 13292
select * from hs_hr_employees
where employee_id = 13288 or employee_id = 13290 or employee_id= 13292;

select * from hs_hr_employees
where employee_id = 13288 or employee_id = 12 or employee_id= 13292;

select * from hs_hr_employees
where employee_id = 13288 and employee_id = 12 and employee_id= 13292;

-- display all the info from job_tit except Bakery Chef

select * from ohrm_job_title
where not job_title = 'Bakery Chef';

select * from hs_hr_employees
where employee_id in (13288, 13290, 12, 11123);

select * from hs_hr_employees
where emp_firstname in ('Reyhan' , 'Reyhane') and (emp_lastname = 'Barindik');

-- display employees first and last names and eployee id who have employee ids from 11123 until 13288
select emp_firstname, emp_lastname, employee_id
from hs_hr_employees
where employee_id between 11123 and 13288;

select emp_firstname from hs_hr_employees
where emp_firstname like 'a%';

select emp_firstname from hs_hr_employees
where emp_firstname like 're%';

select emp_firstname from hs_hr_employees
where emp_firstname like '%a';

select emp_firstname from hs_hr_employees
where emp_firstname like 'r%e';

select emp_firstname, emp_lastname, emp_birthday 
from hs_hr_employees
where emp_birthday >'2000%';

select * from ohrm_nationality
where name like 'a%';

-- display all employees who were born in February 
select emp_firstname, emp_lastname, emp_birthday 
from hs_hr_employees
where emp_birthday like '%03-__';

select emp_firstname, emp_lastname, emp_birthday 
from hs_hr_employees
where emp_birthday like '%-03-%';




