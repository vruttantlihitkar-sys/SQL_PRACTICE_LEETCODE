# Write your MySQL query statement below
with cte as(
select num,
lead(num,1) over() as x ,
lag(num,1) over() as y
from Logs)

select distinct num as ConsecutiveNums 
from cte
where num = x and x = y 
