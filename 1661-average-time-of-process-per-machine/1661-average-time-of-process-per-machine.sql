# Write your MySQL query statement below
select A.machine_id , round(avg(AA.timestamp - A.timestamp),3)processing_time
from Activity A
join Activity AA
on A.machine_id=AA.machine_id
and A.process_id=AA.process_id
and A.activity_type='start'
and AA.activity_type='end'
group by A.machine_id
