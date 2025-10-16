select h.hacker_id,h.name
from Submissions s 
  inner join Challenges c on s.challenge_id=c.challenge_id
  inner join Difficulty d on c.difficulty_level=d.difficulty_level
  inner join Hackers h on s.hacker_id=h.hacker_id and d.score=s.score

group by h.hacker_id,h.name
having count(s.hacker_id)>1
order by count(s.hacker_id) desc,h.hacker_id asc

