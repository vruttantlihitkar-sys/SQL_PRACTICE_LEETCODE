select class from (select class, count(student) x
from courses
group by class
having x>= 5) t