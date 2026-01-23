Select firstName , lastName , city ,state
from Person as p 
left join Address as a
on a.PersonId = p.PersonId
