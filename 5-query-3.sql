select round(avg(grade),2) as moyenne , firstname, lastname
from student s
inner join assessment a on a.id_student = s.id
inner join module m on m.id = a.id_module
inner join `year` y on m.year = y.id
Where y.id = 2
GROUP BY s.id
ORDER BY y.label, moyenne, firstname, lastname;