
(
select s.name,g.grade,s.marks
from Students s inner join Grades g on  s.marks>=g.min_mark and s.marks<=g.max_mark
where g.grade>=8
)

UNION

(
select null,g.grade,s.marks
from Students s inner join Grades g on  s.marks>=g.min_mark and s.marks<=g.max_mark
where g.grade<8
)

order by grade desc,name asc,marks asc
