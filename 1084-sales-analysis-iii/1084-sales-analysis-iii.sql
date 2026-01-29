select distinct p.product_id, p.product_name 

from sales s
left join product p
on  s.product_id = p.product_id

group by product_id , product_name

having max(sale_date)<="2019-03-31"
and
min(sale_date)>="2019-01-01"
