# Write your MySQL query statement below
SELECT name as Customers From Customers
where id NOT IN
    (
        select customerId from orders 
    )