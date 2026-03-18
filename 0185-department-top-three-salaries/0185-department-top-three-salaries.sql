# Write your MySQL query statement below
with cte as(
select d.name as Department, e.name as Employee, e.salary Salary ,
dense_rank() over(partition by d.name order by e.salary desc) as rankk
from Employee  e
left join Department d
on e.departmentid = d.id

)

select Department ,Employee , Salary 
from cte
where rankk < 4
