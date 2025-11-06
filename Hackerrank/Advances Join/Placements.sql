

select s.name
from Students s left join Friends f on s.id=f.id
left join Packages s1 on s.id=s1.id
left join Packages s2 on f.friend_id=s2.id
where s2.salary > s1.salary
order by s2.salary asc
