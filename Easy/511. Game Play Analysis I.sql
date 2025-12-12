-- using window functions

select t.player_id as player_id,
t.event_date as first_login
from
(
select player_id,event_date,
      row_number() over(partition by player_id order by event_date asc)  as dateRank
from Activity
)t where t.dateRank=1;

-- /approach 1

select a1.player_id,a1.event_date as first_login
from Activity a1
where a1.event_date=(
    select min(a2.event_date) from Activity a2 where a2.player_id=a1.player_id
) 
group by a1.player_id;
