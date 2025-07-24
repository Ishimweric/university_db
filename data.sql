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