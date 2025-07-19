
-- Quuestion Link: https://www.interviewbit.com/problems/performance-improvement/
select t1.TestId as TestId
from Tests t1 inner join Tests t2  on t2.TestId=t1.TestId-1
where t1.Marks>t2.Marks
