# Write your MySQL query statement below
SELECT  sell_date,
COUNT(distinct(product)) as num_sold ,
group_concat(
    distinct product
    order by product
    SEPARATOR ','
) AS products
FROM  Activities 
group by sell_date