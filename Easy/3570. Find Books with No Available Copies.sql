
select b.book_id,l.title,l.author,l.genre,l.publication_year,
l.total_copies as current_borrowers
from borrowing_records b inner join library_books l on l.book_id=b.book_id
where return_date is NULL
group by b.book_id
having count(b.book_id)=l.total_copies
order by current_borrowers desc,l.title asc


