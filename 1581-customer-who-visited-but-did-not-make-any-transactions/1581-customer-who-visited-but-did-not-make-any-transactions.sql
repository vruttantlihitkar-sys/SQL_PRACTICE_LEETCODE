select customer_id , count(customer_id) as count_no_trans
from visits v
left join Transactions t 
on v.visit_id = t.visit_id
where v.visit_id not in (
    select visit_id
    from Transactions 
)
group by customer_id 
