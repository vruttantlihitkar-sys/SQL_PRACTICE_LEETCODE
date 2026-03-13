# Write your MySQL query statement below
select NAME , BALANCE
from Users u
 join (select account, sum(amount) BALANCE from transactions group by account having sum(amount)>10000  ) as x
on u.account = x.account

