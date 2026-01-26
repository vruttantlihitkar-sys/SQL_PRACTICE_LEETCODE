select a.machine_id , abs(round(avg(a.timestamp - b.timestamp),3)) as processing_time
from activity as a
join activity as b
on a.machine_id = b.machine_id
and a.process_id = b.process_id
and a.activity_type = "start"
and b.activity_type = "end"
group by a.machine_id 