# Write your MySQL query statement below
SELECT DATE_FORMAT(trans_date,'%Y-%m') as month,
    country,
    COUNT(id) as trans_count,
    SUM(state='approved') as approved_count,
    SUM(amount) AS trans_total_amount,
    SUM(IF(state="Approved",amount,0)) as approved_total_amount
    FROM Transactions
    group by month,country