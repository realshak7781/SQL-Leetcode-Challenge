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
