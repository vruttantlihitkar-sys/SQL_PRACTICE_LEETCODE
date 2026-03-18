-- # Write your MySQL query statement below
-- select d.name, e.name , max(salary)
-- from Employee  e 
-- left join department d 
-- on departmentid = d.id
-- group by d.name 

select  Department  ,  Employee  , salary
from
(select d.name as Department  , e.name as Employee , e.salary as salary,
dense_rank() over(partition by departmentId order by salary desc ) as rankk
from Employee  e 
left join department d
on e.departmentid = d.id
) t
where rankk = 1