
--Question Link : https://www.interviewbit.com/problems/chess-tournament/

select Name
from Players
where Id in (
    select Id from Matches group by id 
    having sum(result)>=1 and count(result)-sum(result)<=1
)
