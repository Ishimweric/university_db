-- ensure we still using the correct database
USE university_db;

INSERT INTO students (student_name, email, dob, program) VALUES
('Alice Smith', 'alice.smith@example.com', '2002-03-15', 'Computer Science'),
('Bob Johnson', 'bob.j@example.com', '2001-07-22', 'Electrical Engineering'),
('Charlie Brown', 'charlie.b@example.com', '2003-11-01', 'Mathematics'),
('Diana Prince', 'diana.p@example.com', '2000-05-10', 'Computer Science'),
('Eve Adams', 'eve.a@example.com', '2002-09-28', 'Physics'),
('Frank Miller', 'frank.m@example.com', '2001-01-05', 'Electrical Engineering');