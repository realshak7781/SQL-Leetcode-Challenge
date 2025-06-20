SELECT e1.employee_id,e1.name,
count(distinct e2.employee_id) as reports_count,
round(avg(e2.age)) as average_age
FROM Employees e1
JOIN Employees e2
ON e1.employee_id = e2.reports_to
group by e1.employee_id;
