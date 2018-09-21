SELECT s.lastname, s.firstname , ROUND(AVG(ass.grade), 2) as moyenne, CASE
            WHEN ROUND(AVG(ass.grade),2) >= 15 AND  ROUND(AVG(ass.grade),2) <= 20 THEN 'A'
            WHEN ROUND(AVG(ass.grade),2) >= 10 AND  ROUND(AVG(ass.grade),2) < 15 THEN 'B'
            WHEN ROUND(AVG(ass.grade),2) >= 5 AND  ROUND(AVG(ass.grade),2) < 10 THEN 'C'
            WHEN ROUND(AVG(ass.grade),2) >= 0 AND  ROUND(AVG(ass.grade),2) < 5 THEN 'D'
          END
FROM student s LEFT JOIN assessment ass on ass.id_student = s.id
GROUP BY s.id
ORDER BY moyenne DESC, s.lastname ASC