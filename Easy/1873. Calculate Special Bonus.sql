-- APPROACH 2:

select employee_id,if(employee_id%2=0 or name  like 'M%',0,salary) as bonus
from Employees
order by employee_id;





-- APPROACH 1:
(
select employee_id,salary as bonus
from Employees
where employee_id%2!=0 and name not like 'M%'
)
union

(
select employee_id,0 as bonus
from Employees
where employee_id%2=0 or name like 'M%'
)

order by employee_id
