select max(months*salary) as max_salary,
 (select count(*) from Employee where months*salary=(select max(months*salary) from Employee))
from Employee 
