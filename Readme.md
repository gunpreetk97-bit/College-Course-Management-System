# College Course Management System

## About

This project is a simple College Course Management System developed using MySQL.

The database manages faculty and course information and demonstrates the use of SQL commands, constraints, data manipulation, and data retrieval operations.

## Technologies Used

- MySQL
- MySQL Workbench
- SQL

## Database Tables

### Faculty

The Faculty table stores information about college faculty members.

| Column | Description |
|---|---|
| FacultyID | Unique ID of the faculty member |
| Name | Faculty name |
| Department | Faculty department |
| Email | Faculty email address |
| Salary | Faculty salary |

### Course

The Course table stores information about courses offered by the college.

| Column | Description |
|---|---|
| CourseID | Unique ID of the course |
| CourseName | Name of the course |
| Credits | Number of course credits |
| Department | Department offering the course |
| FacultyID | Faculty member assigned to the course |
| Semester | Semester in which the course is offered |

## SQL Concepts Used

- CREATE DATABASE
- CREATE TABLE
- PRIMARY KEY
- FOREIGN KEY
- NOT NULL
- UNIQUE
- DEFAULT
- CHECK
- INSERT
- SELECT
- BETWEEN
- LIKE
- IN
- DISTINCT
- UPDATE
- DELETE
- ALTER TABLE

## Constraints Used

### Primary Key

Used to uniquely identify each faculty member and course.

### Foreign Key

`FacultyID` in the Course table references `FacultyID` in the Faculty table.

### NOT NULL

Used for important fields such as faculty name, department, and course name.

### UNIQUE

Used for faculty email addresses to prevent duplicate email values.

### DEFAULT

Default values are provided for course credits and semester.

### CHECK

Salary must be greater than 0, while course credits must be between 1 and 5.

## Operations Performed

The project performs the following operations:

1. Creates the CollegeManagement database.
2. Creates Faculty and Course tables.
3. Applies different SQL constraints.
4. Inserts faculty and course records.
5. Displays courses having credits between 2 and 4.
6. Searches course names using LIKE.
7. Filters courses using IN.
8. Displays unique departments using DISTINCT.
9. Updates the faculty assigned to a course.
10. Deletes a course based on its credit value.
11. Adds a new Semester column using ALTER TABLE.
12. Displays the final course records.

## How to Run

1. Open MySQL Workbench.
2. Open `College_Course_Management.sql`.
3. Execute the complete SQL script.
4. The `CollegeManagement` database and its tables will be created.
5. The inserted records and SQL operations can then be viewed in MySQL Workbench.

## Project Structure

```text
College-Course-Management-System/
│
├── College_Course_Management.sql
└── README.md