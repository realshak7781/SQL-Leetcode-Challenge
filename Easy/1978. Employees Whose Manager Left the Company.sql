
select e1.employee_id
from employees e1
where e1.salary<30000 and e1.manager_id not in(select distinct employee_id from Employees)
order by employee_id;
