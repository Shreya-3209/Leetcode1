# Write your MySQL query statement below
/*SELECT customer_id,count(v.visit_id) as count_no_trans 
from visits as v
left join Transactions as t
on  v.visit_id=t.visit_id
where t.visit_id Is NULL
group by customer_id*/

/*select customer_id,count(*) as count_no_trans from visits
where visit_id NOT IN (select visit_id from transactions)
group by customer_id*/


select customer_id,count(visit_id) as count_no_trans from Visits
where visit_id NOT IN(
    select visit_id from Transactions )
 group by customer_id
    