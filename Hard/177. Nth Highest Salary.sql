CREATE FUNCTION getNthHighestSalary(N INT) RETURNS INT
BEGIN
  RETURN (
    SELECT if((select count(distinct salary) from Employee)>=N and N>=1,salary,null)
    FROM (
      SELECT distinct salary
      FROM employee
      ORDER BY salary DESC
      LIMIT N
    ) AS temp
    ORDER BY salary
    LIMIT 1
  );
END
