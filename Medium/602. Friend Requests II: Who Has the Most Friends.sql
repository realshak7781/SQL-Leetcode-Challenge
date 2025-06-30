

select id, count as num
from(

select id,count(id) as count
from(
    select requester_id as id
from RequestAccepted 

union  all

select accepter_id as id
from RequestAccepted 
) as sub1

group by id
) as sub2

where count=(
    select max(count)
    from(

select id,count(id) as count
from(
    select requester_id as id
from RequestAccepted 

union  all

select accepter_id as id
from RequestAccepted 
) as sub1

group by id
    ) as sub3
)
