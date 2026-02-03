select product_name , unit
from Products p 
 join 
(select product_id , sum(unit) as unit
from orders o
where  monthname(order_date) = "February" and year(order_date) = "2020"
group by product_id
having sum(unit)>=100) t
on p.product_id = t.product_id
