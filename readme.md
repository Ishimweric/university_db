# MySQL Student Enrollment System

This project designs and implements a foundational relational database system using **MySQL** to manage student enrollment, course listings, and registrations for a university. It demonstrates core **SQL concepts** including table creation, key constraints, relational modeling, and data manipulation.

---

## **Objective**

To create a centralized database system that allows for **reliable storage, querying, and maintenance** of student, course, and enrollment data, enabling accurate tracking and basic analytics.

---

## **Project Structure**

/mysql-student-enrollment
  ├── schema.sql
  ├── data.sql
  ├── queries.sql
  └── README.md


---

## **Database Schema Overview**

The database consists of three interconnected tables:

### **1. students**
Stores information about individual students:
- **id**: Primary Key (`INT`, `AUTO_INCREMENT`)
- **student_name**: Student's full name (`VARCHAR`)
- **email**: Student's email address (`VARCHAR`, `UNIQUE`)
- **dob**: Date of birth (`DATE`)
- **program**: Academic program of the student (`VARCHAR`)

### **2. courses**
Stores details about available courses:
- **id**: Primary Key (`INT`, `AUTO_INCREMENT`)
- **course_name**: Full name of the course (`VARCHAR`)
- **course_code**: Unique code for the course (`VARCHAR`, `UNIQUE`)
- **instructor**: Name of the course instructor (`VARCHAR`)

### **3. enrollments**
Manages the many-to-many relationship between students and courses:
- **student_id**: Foreign Key referencing `students.id`
- **course_id**: Foreign Key referencing `courses.id`
- **date_enrolled**: The date the student enrolled in the course (`DATE`)
- **Primary Key**: Composite key on `(student_id, course_id)` to ensure a student can only enroll in a course once.
- **ON DELETE CASCADE**: Ensures that if a student or course is deleted, their corresponding enrollment records are also automatically removed, maintaining data integrity.

---

## **How to Run the SQL Files**

### **Prerequisites**
- Ensure you have **MySQL 8.x** installed and running.
- You can use **MySQL Workbench** or the **MySQL Command Line Client**.

---
## 1 Connect to MySQL:

Open your MySQL Command Line Client (or Workbench).

Log in using your MySQL root user or another user with sufficient privileges:

mysql -u root -p

(Enter your password when prompted)

## 2 Execute schema.sql:

This script creates the university_db database and defines the students, courses, and enrollments tables.

From the mysql> prompt, run:

SOURCE /path/to/your/mysql-student-enrollment/schema.sql;

(Replace /path/to/your/mysql-student-enrollment/ with the actual path to your project folder.)

## 3 Execute data.sql:

This script populates the tables with sample student, course, and enrollment records.

From the mysql> prompt, run:

SOURCE /path/to/your/mysql-student-enrollment/data.sql;

## 4 Execute queries.sql:

This script contains various SELECT queries to retrieve meaningful information from the populated database. You can copy and paste individual queries from this file into your MySQL client, or run the whole file.

From the mysql> prompt, run:

SOURCE /path/to/your/mysql-student-enrollment/queries.sql;

Feel free to modify the WHERE clauses in queries.sql to test with different student emails or course codes.

## ** BTW this is not a real university database it's a part of an assignment from my bootcamp, PLease use it for educational purposes **