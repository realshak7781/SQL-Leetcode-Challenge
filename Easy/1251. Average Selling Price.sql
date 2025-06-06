# Write your MySQL query statement below
select p.product_id,ifnull(round(sum(p.price*u.units)* 1.0/sum(u.units),2),0) as average_price 
from
prices p
left join UnitsSold u
on p.product_id=u.product_id and u.purchase_date BETWEEN p.start_date AND p.end_date
group by p.product_id;
