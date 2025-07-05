select a1.player_id,a1.event_date as first_login
from Activity a1
where a1.event_date=(
    select min(a2.event_date) from Activity a2 where a2.player_id=a1.player_id
) 
group by a1.player_id;
