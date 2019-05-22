SELECT COUNT(demerit_count) FROM students;

SELECT SUM(demerit_count) FROM students;
-- for grade 11
SELECT SUM(demerit_count) FROM students GROUP BY year HAVING year = 11;

SELECT demerit_count, name FROM students ORDER BY demerit_count DESC NULLS LAST LIMIT 1;

SELECT AVG(demerit_count) FROM students;

-- average grade for class
SELECT AVG(grade_value), student_id FROM grades

-- average grade per students
SELECT AVG(grade_value), student_id FROM grades GROUP BY student_id




























-- SELECT AVG(grade_value) FROM grades;
--
-- SELECT average_grade, students.name FROM (SELECT AVG(grades.grade_value) AS average_grade, student_id FROM grades GROUP BY student_id) AS student_grades INNER JOIN students ON student_grades.student_id = students.id;\
--
-- SELECT AVG(grade_value), subject FROM grades GROUP BY subject HAVING subject = 'Science';
--
-- SELECT AVG(grade_value) AS average FROM grades GROUP BY student_id ORDER BY average LIMIT 1;
