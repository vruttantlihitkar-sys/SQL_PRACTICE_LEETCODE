# Write your MySQL query statement below
select  customer_id ,count(*) as count_no_trans
from Visits 
left join Transactions
on Visits.Visit_id = transactions.Visit_id 
where transactions.Visit_id  is null
group by customer_id

-- select  *
-- from Visits 
-- left join Transactions
-- on Visits.Visit_id = transactions.Visit_id 
-- -- where amount is null
-- -- group by customer_id