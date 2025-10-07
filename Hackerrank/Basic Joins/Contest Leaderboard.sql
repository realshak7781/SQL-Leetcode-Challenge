
select h.hacker_id, h.name, sum(MAX_SCORE.t1) as total_score
from Hackers h
inner join (
    select max(s.score) as t1, s.hacker_id
    from Submissions s
    group by s.hacker_id, s.challenge_id
    having t1 > 0
) as MAX_SCORE on MAX_SCORE.hacker_id = h.hacker_id
group by h.hacker_id, h.name
order by total_score desc, h.hacker_id asc;
