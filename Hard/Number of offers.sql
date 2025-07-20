-- Questin Link : https://www.interviewbit.com/problems/number-of-offers/


select sum(if(j.date is null,0,1)) as Job_Offers
from Students s left join Jobs j on s.id=j.id and month(j.date)=11
group by s.id
order by s.id
