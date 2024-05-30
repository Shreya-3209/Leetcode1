# Write your MySQL query statement below
SELECT ROUND(COUNT(distinct player_id)/(SELECT COUNT(distinct player_id) FROm activity),2)
as fraction  FROM Activity
WHERE (player_id,Date_SUB(event_date,INTERVAL 1 DAY))IN(
    SELECT player_id,MIN(event_date) as first_login
From Activity
GROUP BY player_id
)
