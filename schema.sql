-- create database if it don't exist
CREATE DATABASE IF NOT EXISTS university_db;

-- use created database
USE university_db;

-- 1. Create the students table
CREATE TABLE students (
  id INT PRIMARY KEY AUTO_INCREMENT,
  student_name VARCHAR(50) NOT NULL,
  email VARCHAR(50) NOT NULL UNIQUE,
  dob DATE,
  program VARCHAR(50)
);

-- 2. Create the courses table
CREATE TABLE courses (
  id INT PRIMARY KEY AUTO_INCREMENT,
  course_name VARCHAR(50) NOT NULL,
  course_code VARCHAR(50) NOT NULL UNIQUE,
  instructor VARCHAR(50)
);

-- 3. Create enrollments table to link students and courses
CREATE TABLE enrollments(
  student_id INT NOT NULL,
  course_id INT NOT NULL,
  enrollment_date DATE NOT NULL,
  PRIMARY KEY(student_id, course_id), --composite key to ensure unique enrollmemts
  FOREIGN KEY(student_id) REFERENCES students(id) ON DELETE CASCADE,
  FOREIGN KEY(course_id) REFERENCES courses(id) ON DELETE CASCADE
);