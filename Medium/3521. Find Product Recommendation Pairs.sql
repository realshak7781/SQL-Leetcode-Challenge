select p1.product_id as product1_id,
p2.product_id as product2_id,
PI1.category AS product1_category,
PI2.category AS product2_category,
count(p1.user_id) as customer_count
from ProductPurchases p1
inner join ProductPurchases p2 on p1.user_id=p2.user_id and p1.product_id<p2.product_id
inner join ProductInfo PI1 ON p1.product_id = PI1.product_id
inner join ProductInfo PI2 ON p2.product_id = PI2.product_id
group by product1_id,product2_id
having count(p1.user_id) >=3
order by customer_count desc,product1_id,product2_id;
