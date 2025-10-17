

select max(months*salary) as max_salary,
       sum(if(months*salary=(select max(months*salary) from Employee),1,0))
from Employee 
