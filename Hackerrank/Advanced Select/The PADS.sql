

select concat(name,'(',substring(occupation,1,1),')') as Names
from Occupations
order by name;

select concat('There are a total of ',count(occupation),' ',lower(occupation),'s.') as totals
from Occupations
group by occupation
order by totals
