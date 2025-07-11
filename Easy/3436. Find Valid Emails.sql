
select *
from Users 
where email regexp '^[a-zA-Z0-9_]+@[a-zA-Z]+\.com$'
