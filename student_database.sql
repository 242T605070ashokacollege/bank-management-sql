-- Student Database Project

CREATE DATABASE StudentDB;

USE StudentDB;

-- Create Students table
CREATE TABLE Students (
    student_id INT PRIMARY KEY,
    name VARCHAR(50),
    age INT,
    course VARCHAR(50),
    marks INT
);

-- Insert student data
INSERT INTO Students
(student_id, name, age, course, marks)
VALUES
(1, 'Tharakam', 20, 'SQL', 85),
(2, 'Thasneem', 21, 'Python', 90),
(3, 'Maneesha', 20, 'Java', 75),
(4, 'Supriya', 22, 'SQL', 95),
(5, 'Dasthagirammma', 21, 'Python', 68);

-- Display all students
SELECT * FROM Students;

-- Display students who scored more than 80
SELECT *
FROM Students
WHERE marks > 80;

-- Display students studying SQL
SELECT *
FROM Students
WHERE course = 'SQL';

-- Sort students by marks
SELECT *
FROM Students
ORDER BY marks DESC;

-- Find the highest marks
SELECT MAX(marks) AS Highest_Marks
FROM Students;

-- Find the lowest marks
SELECT MIN(marks) AS Lowest_Marks
FROM Students;

-- Find average marks
SELECT AVG(marks) AS Average_Marks
FROM Students;

-- Count total students
SELECT COUNT(*) AS Total_Students
FROM Students;
