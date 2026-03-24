select id , 
case when P_id is Null then "Root"
    when id in (select distinct p_id from tree where p_id is not null) then "Inner"
    else "Leaf" 
end  as type
from 
Tree T
