select 'Low Salary' as category ,count(a1.account_id) as accounts_count
from Accounts a1
join Accounts a2 on  a1.account_id=a2.account_id and a1.income<20000

union

select 'Average Salary' as category ,count(a1.account_id) as accounts_count
from Accounts a1
join Accounts a2 on  a1.account_id=a2.account_id and a1.income between 20000 and 50000

union

select 'High Salary' as category ,count(a1.account_id) as accounts_count
from Accounts a1
join Accounts a2 on  a1.account_id=a2.account_id and a1.income>50000;
