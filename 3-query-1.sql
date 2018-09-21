select firstname, lastname, label 
from student s 
left join enrolment e on s.id = e.id_student
left join `year` y on e.id_year = y.id
where e.`from` >= "2017-01-01"
order by lastname asc


