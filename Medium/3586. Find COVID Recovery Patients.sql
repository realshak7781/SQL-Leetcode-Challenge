select c1.patient_id,p.patient_name,p.age,
datediff(min(c2.test_date),min(c1.test_date)) as recovery_time
from covid_tests c1 inner join covid_tests c2 on c1.patient_id=c2.patient_id and c1.result='Positive' and c2.result='Negative' and c1.test_date<c2.test_date
left join patients p on c1.patient_id=p.patient_id
group by c1.patient_id,p.patient_name,p.age
order by recovery_time,p.patient_name



