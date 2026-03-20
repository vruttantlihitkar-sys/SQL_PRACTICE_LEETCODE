# Write your MySQL query statement below
with cte as (
select emp_id ,event_day as day , (out_time - in_time) as time_
from employees )

select day , emp_id , sum(time_) as total_time
from cte
group by emp_id , day