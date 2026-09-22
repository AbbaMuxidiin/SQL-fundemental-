SQL Day 1 – School Database Practice

📚 Project Overview

This project is a beginner-level SQL practice project created using Microsoft SQL Server.
The project focuses on creating a simple school database and practicing basic SQL commands for creating tables, inserting data, retrieving data, filtering, and sorting records.

🗄️ Database

The database created in this project is:

school_db

It is selected with:

USE school_db;

📋 Database Tables

1. Students Table

The Students table stores basic information about students.

Column

Data Type

Description

std_id

INT

Student ID

std_name

VARCHAR(20)

Student name

email

VARCHAR(20)

Student email

age

INT

Student age

score

INT

Student score

2. Teacher Table

The teacher table stores information about teachers.

Column

Data Type

Constraint

Description

t_id

INT

PRIMARY KEY

Teacher ID

t_name

VARCHAR(20)

NOT NULL

Teacher name

emaail

VARCHAR(100)

UNIQUE

Teacher email

age

INT

CHECK (age >= 16)

Teacher age

salary

INT

DEFAULT 0

Teacher salary

👨‍🎓 Student Data

The project inserts four students:

ID

Name

Age

Score

1

ABA

29

100

2

AHMED

30

100

3

ABDULAAHI

25

100

4

MAHAMED

21

100

👨‍🏫 Teacher Data

The project inserts one teacher:

ID

Name

Age

Salary

1

ABA

29

100

🔎 SQL Commands Practiced

Create Database

CREATE DATABASE school_db;

Select Database

USE school_db;

Create Tables

The project demonstrates how to create tables with different data types and constraints.

Insert Data

INSERT INTO Students
(std_id, std_name, email, age, score)
VALUES
(1, 'ABA', 'ABBA@GMAIL.COM', 29, 100),
(2, 'AHMED', 'ABBA@GMAIL.COM', 30, 100),
(3, 'ABDULAAHI', 'ABBA@GMAIL.COM', 25, 100),
(4, 'MAHAMED', 'ABBA@GMAIL.COM', 21, 100);

SELECT

Display all student records:

SELECT * FROM Students;

Display all teacher records:

SELECT * FROM teacher;

Display only student names:

SELECT std_name FROM Students;

DISTINCT

Find unique ages:

SELECT DISTINCT age
FROM Students;

DISTINCT removes duplicate values from the result.

WHERE + AND

Find students whose age is greater than 29 and score is greater than 90:

SELECT std_name, score
FROM Students
WHERE age >= 29 AND score > 90;

NOT

Find students whose age is not 29:

SELECT std_name, score, age
FROM Students
WHERE NOT age = 29;

Another example:

SELECT *
FROM Students
WHERE NOT age = 21;

BETWEEN

The project practices filtering scores within a range:

SELECT *
FROM Students
WHERE score BETWEEN 80 AND 50;

Note: In SQL, BETWEEN is normally written from the smaller value to the larger value.
For example, to search for scores from 50 to 80:

SELECT *
FROM Students
WHERE score BETWEEN 50 AND 80;

LIKE

Find student names that start with the letter A:

SELECT std_name
FROM Students
WHERE std_name LIKE 'A%';

A% means the value starts with A and can contain any characters after it.

ORDER BY

Sort students by score from highest to lowest:

SELECT *
FROM Students
ORDER BY score DESC;

Display only names and scores while sorting by score:

SELECT std_name, score
FROM Students
ORDER BY score DESC;

🔐 SQL Constraints Practiced

This project introduces several important SQL constraints:

PRIMARY KEY – uniquely identifies each record.

NOT NULL – prevents a column from being empty.

UNIQUE – prevents duplicate values in a column.

CHECK – ensures that values meet a specific condition.

DEFAULT – provides a default value when no value is supplied.

Example:

age INT CHECK (age >= 16),
salary INT DEFAULT 0

🎯 Learning Objectives

By completing this SQL practice, the learner can understand:

How to create a database.

How to select a database.

How to create tables.

How to define columns and data types.

How SQL constraints work.

How to insert records.

How to retrieve data using SELECT.

How to remove duplicate results using DISTINCT.

How to filter records using WHERE.

How to combine conditions using AND.

How to exclude records using NOT.

How to search using LIKE.

How to filter ranges using BETWEEN.

How to sort results using ORDER BY.

🛠️ Tools Used

Microsoft SQL Server

SQL Server Management Studio (SSMS)

SQL

📁 Project Structure

SQL-Day-1/
│
├── SQLQuery1.sql
└── README.md

🚀 How to Run

Open SQL Server Management Studio (SSMS).

Open the SQLQuery1.sql file.

Execute the database creation query.

Select/use the school_db database.

Create the Students and teacher tables.

Insert the sample data.

Run the SELECT, filtering, and sorting queries.

Check the results in the Results window.

📌 Project Status

Completed – SQL Day 1 Practice

👤 Author

Abba Muxidiin

⭐ Summary

This project is a practical introduction to SQL using a simple school database. It covers the essential beginner SQL concepts needed before moving to more advanced topics such as JOIN, GROUP BY, aggregate functions, subqueries, and database relationships.
