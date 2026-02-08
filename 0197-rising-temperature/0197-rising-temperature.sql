# Write your MySQL query statement below
select W.id
from Weather W
join Weather WW
on datediff (W.recorddate , WW.recorddate)=1
where W.temperature>WW.temperature