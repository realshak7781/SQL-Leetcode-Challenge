
select max(num) as num
from(
    select num,count(*) as cnt
    from MyNumbers
    group by num
) as sub
 where cnt=1;
