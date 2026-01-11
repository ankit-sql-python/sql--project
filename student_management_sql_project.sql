-- ==============================
-- Student Management System SQL Project
-- ==============================

CREATE DATABASE student_db;
USE student_db;

CREATE TABLE students (
    student_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    gender VARCHAR(10),
    age INT,
    course VARCHAR(50)
);

CREATE TABLE courses (
    course_id INT PRIMARY KEY,
    course_name VARCHAR(50),
    duration VARCHAR(20)
);

CREATE TABLE enrollments (
    enrollment_id INT PRIMARY KEY,
    student_id INT,
    course_id INT
);

INSERT INTO students VALUES
(1,'Ankit','Saraswat','Male',21,'BCA'),
(2,'Rahul','Sharma','Male',22,'BSc'),
(3,'Neha','Verma','Female',20,'BCom');

INSERT INTO courses VALUES
(101,'BCA','3 Years'),
(102,'BSc','3 Years'),
(103,'BCom','3 Years');

INSERT INTO enrollments VALUES
(1,1,101),
(2,2,102),
(3,3,103);

SELECT COUNT(*) AS total_students FROM students;

SELECT course, COUNT(*) AS student_count
FROM students
GROUP BY course;

SELECT s.first_name, s.last_name, c.course_name
FROM students s
JOIN enrollments e ON s.student_id = e.student_id
JOIN courses c ON e.course_id = c.course_id;
