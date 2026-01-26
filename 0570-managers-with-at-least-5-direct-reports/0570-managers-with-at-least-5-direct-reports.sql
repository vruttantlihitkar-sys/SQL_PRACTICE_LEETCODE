select e.name 
from employee as e
left join employee as x
on e.id = x.managerid
group by e.id , e.name
having count(x.id)>=5