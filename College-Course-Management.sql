CREATE DATABASE CollegeManagement;
USE CollegeManagement;
CREATE TABLE Faculty (
    FacultyID INT PRIMARY KEY,
    Name VARCHAR(50) NOT NULL,
    Department VARCHAR(50) NOT NULL,
    Email VARCHAR(100) UNIQUE,
    Salary INT CHECK (Salary > 0)
);
CREATE TABLE Course (
    CourseID INT PRIMARY KEY,
    CourseName VARCHAR(50) NOT NULL,
    Credits INT DEFAULT 3 CHECK (Credits >= 1 AND Credits <= 5),
    Department VARCHAR(50) NOT NULL,
    FacultyID INT,
    FOREIGN KEY (FacultyID) REFERENCES Faculty(FacultyID)
);
INSERT INTO Faculty (FacultyID, Name, Department, Email, Salary) VALUES
(1,'Dr. Sharma','Computer Science','sharma@college.edu',60000),
(2,'Dr. Mehta','Mathematics','mehta@college.edu',55000),
(3,'Dr. Singh','Physics','singh@college.edu',58000),
(4,'Dr. Kaur','Chemistry','kaur@college.edu',57000),
(5,'Dr. Verma','Electronics','verma@college.edu',62000);
INSERT INTO Course (CourseID, CourseName, Credits, Department, FacultyID) VALUES
(101,'Data Structures',3,'Computer Science',1),
(102,'Calculus', 4, 'Mathematics', 2),
(103,'Quantum Mechanics',2,'Physics',3),
(104,'Organic Chemistry',3,'Chemistry',4),
(105,'Digital Circuits',4,'Electronics',5);
SELECT*FROM Course WHERE Credits BETWEEN 2 AND 4;
SELECT*FROM Course WHERE CourseName LIKE 'D%';
SELECT*FROM Course WHERE Department IN ('Computer Science', 'Mathematics');
SELECT DISTINCT Department FROM Course;
UPDATE Course SET FacultyID = 2 WHERE CourseID = 101;
DELETE FROM Course WHERE Credits = 2;
ALTER TABLE Course ADD Semester VARCHAR(20) DEFAULT 'Fall';
SELECT * FROM Course;