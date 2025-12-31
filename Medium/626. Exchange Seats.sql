-- better approach : Improves readability : Using cte and case when
with cte1 as (
    select 
    case 
       when s2.id is null then s1.id
       else s2.id
    end as id,
    s1.student as student

    from Seat s1 left join Seat s2 on s2.id=s1.id+1
    where s1.id%2=1
),
cte2 as (
    select 
    case 
       when s2.id is null then s1.id
       else s2.id
    end as id,
    s1.student as student

    from Seat s1 left join Seat s2 on s2.id=s1.id-1
    where s1.id%2=0
)

(
    select * from cte1

union

select * from cte2
) order by id



-- approach 1 :
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
