-- ensure we still using the correct database
USE university_db;

INSERT INTO students (student_name, email, dob, program) VALUES
('Alice Smith', 'alice.smith@example.com', '2002-03-15', 'Computer Science'),
('Bob Johnson', 'bob.j@example.com', '2001-07-22', 'Electrical Engineering'),
('Charlie Brown', 'charlie.b@example.com', '2003-11-01', 'Mathematics'),
('Diana Prince', 'diana.p@example.com', '2000-05-10', 'Computer Science'),
('Eve Adams', 'eve.a@example.com', '2002-09-28', 'Physics'),
('Frank Miller', 'frank.m@example.com', '2001-01-05', 'Electrical Engineering');

INSERT INTO courses (course_name, course_code, instructor) VALUES
('Introduction to Programming', 'CS101', 'Dr. Ada Lovelace'),
('Data Structures & Algorithms', 'CS201', 'Prof. Alan Turing'),
('Circuit Design Fundamentals', 'EE101', 'Dr. Nikola Tesla'),
('Linear Algebra', 'MA201', 'Prof. Emmy Noether');

-- Insert enrollment records using students and courses attributes

-- for alice
INSERT INTO enrollments(student_id, course_id, enrollment_date) VALUES
(
  (SELECT id FROM students WHERE email = 'alice.smith@example.com'), 
  (SELECT id FROM courses WHERE course_id = 'CS101'),
  '2025-11-11'
),
(
  (SELECT id FROM students WHERE email = 'alice.smith@example.com'), 
  (SELECT id FROM courses WHERE course_id = 'CS102'),
  '2025-11-11'
);

-- for bob
INSERT INTO enrollments (student_id, course_id, date_enrolled) VALUES
(
  (SELECT id FROM students WHERE email = 'bob.j@example.com'), 
  (SELECT id FROM courses WHERE course_code = 'EE101'), 
  '2024-09-01'
),
(
  (SELECT id FROM students WHERE email = 'bob.j@example.com'), 
  (SELECT id FROM courses WHERE course_code = 'MA201'), 
  '2024-09-05'
);

--for charlie
INSERT INTO enrollments (student_id, course_id, date_enrolled) VALUES
(
  (SELECT id FROM students WHERE email = 'charlie.b@example.com'), 
  (SELECT id FROM courses WHERE course_code = 'CS101'), 
  '2024-09-02'
);

--Diana
INSERT INTO enrollments (student_id, course_id, date_enrolled) VALUES
(
  (SELECT id FROM students WHERE email = 'diana.p@example.com'), 
  (SELECT id FROM courses WHERE course_code = 'CS101'), 
  '2024-09-01'
),
(
  (SELECT id FROM students WHERE email = 'diana.p@example.com'), 
  (SELECT id FROM courses WHERE course_code = 'CS201'), 
  '2024-09-01'
);

--FOR eve
INSERT INTO enrollments (student_id, course_id, date_enrolled) VALUES
(
  (SELECT id FROM students WHERE email = 'eve.a@example.com'), 
  (SELECT id FROM courses WHERE course_code = 'MA201'), 
  '2024-09-03'
);
