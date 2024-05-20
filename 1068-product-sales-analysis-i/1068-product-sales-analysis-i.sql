select p.product_name,s.year,s.price from sales as s
left join Product as p
using (product_id)
