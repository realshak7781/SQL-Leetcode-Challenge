(select name as results
from Users
inner join MovieRating on Users.user_id=MovieRating.user_id
group by MovieRating.user_id
order by count(rating) desc,name
limit 1)

union all 

(select title as results
from Movies
inner join MovieRating on Movies.movie_id=MovieRating.movie_id
where month(created_at)='02' and year(created_at)='2020'
group by title
order by avg(rating) desc,title
limit 1)
