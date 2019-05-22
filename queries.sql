






























-- SELECT AVG(grade_value) FROM grades;
--
-- SELECT average_grade, students.name FROM (SELECT AVG(grades.grade_value) AS average_grade, student_id FROM grades GROUP BY student_id) AS student_grades INNER JOIN students ON student_grades.student_id = students.id;\
--
-- SELECT AVG(grade_value), subject FROM grades GROUP BY subject HAVING subject = 'Science';
--
-- SELECT AVG(grade_value) AS average FROM grades GROUP BY student_id ORDER BY average LIMIT 1;
