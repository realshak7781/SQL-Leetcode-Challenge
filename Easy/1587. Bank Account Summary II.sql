select u.name,sum(amount) as balance
from Transactions t inner join Users u on u.account=t.account
group by t.account
having balance >10000;
