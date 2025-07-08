select
sell.stock_name as stock_name,
sell.s-buy.s as capital_gain_loss
from
(select stock_name,sum(price) as s
from Stocks
where operation='Sell'
group by stock_name) as sell

inner join

(
select stock_name,sum(price) as s
from Stocks
where operation='buy'
group by stock_name
) as buy

 on sell.stock_name=buy.stock_name
