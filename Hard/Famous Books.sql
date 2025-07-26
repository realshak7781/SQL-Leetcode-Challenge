
-- question Link :https://www.interviewbit.com/problems/famous-books/
select booksId as Id
from BoughtBooks
group by booksId
having count(id)>=3
