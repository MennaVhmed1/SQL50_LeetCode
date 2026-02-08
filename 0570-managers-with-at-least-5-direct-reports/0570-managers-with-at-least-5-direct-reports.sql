# Write your MySQL query statement below
select E.name
from Employee E
where E.id in(
select managerid
from Employee
where managerid is not null
group by managerid
having count(*)>=5
)
