(
select 'Winter' as season,
category,sum(quantity) as total_quantity,
sum(quantity*price) as total_revenue
from sales s left join products p on p.product_id=s.product_id
where month(sale_date) in ('12','1','2')
group by category
order by total_quantity desc,total_revenue desc
limit 1
)

union

(
select 'Spring' as season,
category,sum(quantity) as total_quantity,
sum(quantity*price) as total_revenue
from sales s left join products p on p.product_id=s.product_id
where month(sale_date) in ('3','4','5')
group by category
order by total_quantity desc,total_revenue desc
limit 1
)

union

(
select 'Summer' as season,
category,sum(quantity) as total_quantity,
sum(quantity*price) as total_revenue
from sales s left join products p on p.product_id=s.product_id
where month(sale_date) in ('6','7','8')
group by category
order by total_quantity desc,total_revenue desc
limit 1
)

union

(
select 'Fall' as season,
category,sum(quantity) as total_quantity,
sum(quantity*price) as total_revenue
from sales s left join products p on p.product_id=s.product_id
where month(sale_date) in ('9','10','11')
group by category
order by total_quantity desc,total_revenue desc
limit 1
)

order by season
