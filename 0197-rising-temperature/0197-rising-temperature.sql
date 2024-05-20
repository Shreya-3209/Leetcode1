# Write your MySQL query statement below
select w1.id as id from weather as w1 
inner join weather as w2
on DATEDIFF(w1.recorddate,w2.recorddate)=1
and w1.temperature > w2.temperature

/*SELECT
    weather.id AS 'Id'
FROM
    weather
        JOIN
    weather w ON DATEDIFF(weather.date, w.date) = 1
        AND weather.Temperature > w.Temperature
*/