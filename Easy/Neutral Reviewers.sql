
-- Question Link:https://www.interviewbit.com/problems/neutral-reviewers/
select re.reviewer_name   from reviewers re   inner join
ratings ra on re.reviewer_id=ra.reviewer_id
where ra.reviewer_stars IS NULL
