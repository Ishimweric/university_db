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

-- Query 2 : retrieve all courses that a specific student is enrolled in based on email
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

-- query 3: Return a count of how many students are enrolled in each course
SELECT
    c.course_name,
    c.course_code,
    COUNT(e.student_id) AS number_of_students_enrolled
FROM
    courses c
LEFT JOIN -- used LEFT JOIN to include courses with 0 enrollments also
    enrollments e ON c.id = e.course_id
GROUP BY
    c.course_name, c.course_code
ORDER BY
    number_of_students_enrolled DESC, c.course_code ASC;
