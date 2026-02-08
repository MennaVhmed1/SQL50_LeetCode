# Write your MySQL query statement below
select S.student_id , S.student_name ,SU.subject_name ,  Count(E.student_id)attended_exams 
from Students S
cross join Subjects SU
left join Examinations E
on S.student_id=E.student_id
and SU.subject_name=E.subject_name
group by SU.subject_name ,  S.student_id
order by S.student_id ,SU.subject_name