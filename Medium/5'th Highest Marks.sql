
Question link : https://www.interviewbit.com/problems/5-th-highest-marks/

--offset method
select marks
from STUDENTS 
order by marks desc
limit 1 offset 4



--Subquery method
select marks 
from STUDENTS s1
where 4=(
    select count(s2.marks) from STUDENTS s2 where s2.marks>s1.marks
)
