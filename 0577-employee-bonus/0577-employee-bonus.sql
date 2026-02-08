# Write your MySQL query statement below
select E.name , B.Bonus
from Employee E
left join Bonus B
on E.empid=B.empid
where B.Bonus<1000
or B.Bonus is null