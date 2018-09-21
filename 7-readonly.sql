
CREATE USER 'readonlyuser'@'localhost' IDENTIFIED BY 'Enzo'

CREATE OR REPLACE VIEW	4emeAnnee as 
	SELECT s.lastname, s.firstname, CASE
            WHEN ROUND(AVG(ass.grade), 1) >= 15 AND  ROUND(AVG(ass.grade)) <= 20 THEN 'A'
            WHEN ROUND(AVG(ass.grade), 1) >= 10 AND  ROUND(AVG(ass.grade)) < 15 THEN 'B'
            WHEN ROUND(AVG(ass.grade), 1) >= 5 AND  ROUND(AVG(ass.grade)) < 10 THEN 'C'
            WHEN ROUND(AVG(ass.grade), 1) >= 0 AND  ROUND(AVG(ass.grade)) < 5 THEN 'D'
	          END as note
	FROM student s LEFT JOIN assessment ass on ass.id_student = s.id
	INNER JOIN module m on m.id = ass.id_module
	INNER JOIN year y on m.year = y.id
	WHERE y.id = 2
	GROUP BY s.id
	ORDER BY ROUND(AVG(ass.grade), 1) DESC, s.lastname ASC

;

select * from 4emeAnnee ;
GRANT select ON 4emeAnnee to 'Enzo';