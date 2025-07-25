-- USING IF ELSE
select user_id,

round(avg(if(activity_type = 'free_trial',activity_duration,null)),2) as trial_avg_duration,
round(avg(if(activity_type = 'paid',activity_duration,null)),2) as paid_avg_duration
from UserActivity
group by user_id
having max(if(activity_type = 'free_trial',activity_date,null))<
      max(if(activity_type = 'paid',activity_date,null))

order by user_id;

-- using CASE WHEN :
select user_id,

round(avg(case when activity_type='free_trial' then activity_duration else null end),2) as trial_avg_duration,
round(avg(case when activity_type='paid' then activity_duration else null end),2) as paid_avg_duration
from UserActivity
group by user_id
having max(case when activity_type = 'free_trial' THEN activity_date end)<
      max(case when activity_type = 'paid' THEN activity_date end)

order by user_id;
