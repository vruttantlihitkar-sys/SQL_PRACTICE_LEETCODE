# Write your MySQL query statement below
(select U.name as results
from MovieRating as M
left join Users as U
on M.user_id = U.User_id 
group by (U.user_id) 
order by count(U.user_id) desc , U.name asc
limit 1
)
union  all

(select m.title as results
from movieRating r
left join Movies  m
on m.movie_id = r.Movie_id
where monthname(r.created_at) = "February" And year(r.created_at) = 2020
group by m.movie_id 
order by avg(r.rating) desc , m.title asc
limit 1



)