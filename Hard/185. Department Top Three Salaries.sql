-- Better Approach Using : Window Functions
select t.DeptName as Department,
       t.EmpName as Employee,
       t.EmpSalary as Salary
from
(
select d.name as DeptName,
       e.name as EmpName,
       e.salary as EmpSalary,
dense_rank() over(partition by d.name order by e.salary desc) as salaryRank
from Employee e inner join Department d on e.departmentId=d.id
)t where t.salaryRank <=3;

-- Approach 1 :
-- using SubQuery

SELECT d.name AS Department,
       e.name AS Employee,
       e.salary AS Salary
FROM Employee e
INNER JOIN Department d ON e.departmentId = d.id
WHERE 3 > (
    SELECT COUNT(DISTINCT e2.salary)
    FROM Employee e2
    WHERE e2.salary > e.salary
      AND e2.departmentId = e.departmentId
);
