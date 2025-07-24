-- ensure we are using the correct database
USE university_db;

--Query 1: retrieve all students enrolled in a specific course (here me i used CS101 , use yours to test)
SELECT
    s.id AS student_id,
    s.name AS student_name,
    s.email AS student_email,
    c.course_name,
    c.course_code
FROM
    students s
JOIN
    enrollments e ON s.id = e.student_id
JOIN
    courses c ON e.course_id = c.id
WHERE
    c.course_code = 'CS101';

-- Query 2 : retrieve all courses that a specific student is enrolled in
SELECT
    s.name AS student_name,
    s.email AS student_email,
    c.course_name,
    c.course_code,
    e.date_enrolled
FROM
    students s
JOIN
    enrollments e ON s.id = e.student_id
JOIN
    courses c ON e.course_id = c.id
WHERE
    s.email = 'alice.smith@example.com';