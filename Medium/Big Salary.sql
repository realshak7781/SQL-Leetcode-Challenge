--Question Link:https://www.interviewbit.com/problems/big-salary/


select count(*) as A
from WORKERS
where dailyWage*DaysWorked=(
    select max(dailyWage*DaysWorked)
    from WORKERS
)
