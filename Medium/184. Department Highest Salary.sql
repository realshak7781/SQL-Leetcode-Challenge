--Fatstest approach using Window functions
select Department,Employee,Salary
from 
(
select e.name as Employee,e.salary as Salary,d.name as Department,
rank() over(partition by d.name order by Salary Desc) as rn
from Employee e inner join Department d on d.id=e.departmentId
)t where rn=1
    
-- better approach:

select d.name as Department,e.name as Employee,e.salary as Salary
from Employee e inner join Department d on e.departmentId=d.id

where e.salary = (
    select max(e1.salary)
    from Employee e1 inner join Department d1 on e1.departmentId=d1.id
    where d1.name=d.name
)


-- approach 2:
SELECT  
    d1.name AS Department,
    e2.name AS Employee,
    e2.salary AS Salary
FROM 
    Employee e2
INNER JOIN 
    Department d1 ON e2.departmentId = d1.id
INNER JOIN (
    SELECT 
        e1.departmentId,
        MAX(e1.salary) AS maxSalary
    FROM 
        Employee e1
    GROUP BY 
        e1.departmentId
) AS sub ON e2.departmentId = sub.departmentId AND e2.salary = sub.maxSalary;
