select firstname, lastname, label 
from `year` y 
right join enrolment e on y.id = e.id_year
right join student s on e.id_student = s.id
where e.`from` >= "2017-01-01"
order by lastname asc;