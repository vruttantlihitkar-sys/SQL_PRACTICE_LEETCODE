# Write your MySQL query statement below
select  *
from 
Users
where email regexp '^[a-zA-z0-9_]+@[a-zA-z]+\\.com$'
order by user_id asc