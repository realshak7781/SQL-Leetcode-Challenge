select t1.id,

ifnull((select t2.student from Seat t2 where t2.id=t1.id+1),t1.student) as student

from Seat t1
where 
t1.id % 2 = 1

union

select t1.id,

ifnull((select t2.student from Seat t2 where t2.id=t1.id-1),t1.student) as student

from Seat t1
where 
t1.id % 2 = 0


order by id;
