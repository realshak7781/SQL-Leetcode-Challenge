SELECT round(count(a.player_id)/(select count(distinct player_id) from Activity),2) as fraction
FROM Activity a
JOIN (
    SELECT player_id, MIN(event_date) AS first_login
    FROM Activity
    GROUP BY player_id
) first_login_dates
ON a.player_id = first_login_dates.player_id
WHERE DATEDIFF(a.event_date, first_login_dates.first_login) = 1;
