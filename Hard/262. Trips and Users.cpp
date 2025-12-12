
select t.request_at as Day,
ROUND(
        SUM(CASE WHEN t.status != 'completed' THEN 1 ELSE 0 END) / COUNT(*), 
        2
    ) AS 'Cancellation Rate'
from Trips t inner join Users u on t.client_id=u.users_id  and u.banned='No'
inner join Users d ON t.driver_id = d.users_id AND d.banned = 'No'
where t.request_at between '2013-10-01' AND '2013-10-03'
group by t.request_at

