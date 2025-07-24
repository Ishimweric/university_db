-- create database if it don't exist
CREATE DATABASE IF NOT EXISTS university_db;

-- use created database
USE university_db;

-- 1. Create the students table
CREATE TABLE students (
  id INT PRIMARY KEY AUTO_INCREMENT,
  name VARCHAR(50) NOT NULL,
  email VARCHAR(50) NOT NULL UNIQUE,
  dob DATE,
  program VARCHAR(50)
);