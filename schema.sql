DROP TABLE IF EXISTS students;
CREATE TABLE students (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  year INTEGER NOT NULL,
  demerit_count INTEGER
);


DROP TABLE IF EXISTS grades;
CREATE TABLE grades (
  id SERIAL PRIMARY KEY,
  subject VARCHAR(255) NOT NULL,
  grade_value INTEGER NOT NULL,
  student_id INTEGER
);

INSERT INTO students(name, year, demerit_count)
VALUES
  ('Tyrion Lannister', 12, 50),
  ('Cersei Lannister', 12, 67),
  ('Ned Stark', 12, 0),
  ('John Snow', 11, 0),
  ('Robert Baratheon', 11, 27),
  ('Jaime Lannister', 11, 18),
  ('Daenerys Targaryen', 10, 9),
  ('Jorah Mormont', 10, 31),
  ('Sansa Stark', 9, 5),
  ('Theon Greyjoy', 9, 7);

INSERT INTO grades(subject, grade_value, student_id)
VALUES
  ('Math', 94, 1),
  ('English', 91, 1),
  ('Science', 77, 1),
  ('History', 67, 1),
  ('Math', 55, 2),
  ('English', 88, 2),
  ('Science', 66, 2),
  ('History', 99, 2),
  ('Math', 90, 3),
  ('English', 90, 3),
  ('Science', 90, 3),
  ('History', 90, 3),
  ('Math', 91, 4),
  ('English', 86, 4),
  ('Science', 81, 4),
  ('History', 83, 4),
  ('Math', 77, 5),
  ('English', 76, 5),
  ('Science', 75, 5),
  ('History', 39, 5),
  ('Math', 66, 6),
  ('English', 69, 6),
  ('Science', 68, 6),
  ('History', 65, 6),
  ('Math', 98, 7),
  ('English', 79, 7),
  ('Science', 78, 7),
  ('History', 75, 7),
  ('Math', 77, 8),
  ('English', 89, 8),
  ('Science', 88, 8),
  ('History', 85, 8),
  ('Math', 75, 9),
  ('English', 99, 9),
  ('Science', 99, 9),
  ('History', 95, 9),
  ('Math', 91, 10),
  ('English', 42, 10),
  ('Science', 78, 10),
  ('History', 82, 10);
