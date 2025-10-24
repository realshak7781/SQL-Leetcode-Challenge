
select 
max(case when Occupation='Doctor' then Name else null end) as Doctor,
max(case when Occupation='Professor' then Name else null end) as Professor,
max(case when Occupation='Singer' then Name else null end) as Singer,
max(case when Occupation='Actor' then Name else null end) as Actor

from (
    select 
    Name,
    Occupation,
    Row_Number() over (partition by occupation order by Name) as row_num
    from Occupations
) as RankedOcc

group by row_num
order by row_num
