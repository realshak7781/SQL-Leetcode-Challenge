-- Question Link:https://www.interviewbit.com/problems/movie-character/

select concat(d.director_first_name,d.director_last_name) as director_name,m.movie_title as movie_title
from directors d inner join movies_directors md on d.director_id=md.director_id
inner join movies_cast mc on  md.movie_id=mc.movie_id
inner join movies m on m.movie_id=mc.movie_id
where mc.role='SeanMaguire';
