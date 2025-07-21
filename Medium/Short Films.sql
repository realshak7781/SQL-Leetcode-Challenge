-- Question Link: https://www.interviewbit.com/problems/short-films/

select mv.movie_title,mv.movie_year,concat(d.director_first_name,d.director_last_name) as director_name,
concat(a.actor_first_name,a.actor_last_name) as actor_name,mc.role
from directors d inner join movies_directors md on d.director_id=md.director_id
inner join movies mv on mv.movie_id=md.movie_id
inner join movies_cast mc on  mc.movie_id=mv.movie_id
inner join actors a on mc.actor_id=a.actor_id

order by mv.movie_time asc
limit 1;
