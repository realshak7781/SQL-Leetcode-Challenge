select l1.num as ConsecutiveNums
from Logs as l1
join Logs as l2 on l2.id=l1.id+1 and l1.num=l2.num
join Logs as l3 on l3.id=l1.id+2 and l1.num=l3.num

group by l1.num;
