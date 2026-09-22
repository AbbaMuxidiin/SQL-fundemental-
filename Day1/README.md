# 🏫 School Database SQL Project

## 📌 Project Overview

This project is a beginner-level **SQL Database Practice Project** designed to demonstrate the basic concepts of creating and managing a school database using SQL.

The database is named **`school_db`** and contains information about students and teachers.

The project covers:

* Database creation
* Table creation
* Primary Key
* NOT NULL constraint
* UNIQUE constraint
* CHECK constraint
* DEFAULT values
* INSERT statements
* SELECT statements
* DISTINCT
* WHERE conditions
* AND / NOT operators
* BETWEEN
* LIKE
* ORDER BY
* Filtering and sorting data

---

## 🗄️ Database

The project creates a database called:

```sql
school_db
```

The database is selected using:

```sql
USE school_db;
```

---

## 📊 Tables

### 1. Students Table

The `Students` table contains student information.

| Column     | Data Type   | Description   |
| ---------- | ----------- | ------------- |
| `std_id`   | INT         | Student ID    |
| `std_name` | VARCHAR(20) | Student name  |
| `eamil`    | VARCHAR(20) | Student email |
| `age`      | INT         | Student age   |
| `score`    | INT         | Student score |

Example structure:

```sql
CREATE TABLE Students(
    std_id INT,
    std_name VARCHAR(20),
    eamil VARCHAR(20),
    age INT,
    score INT
);
```

### 2. Teacher Table

The `teacher` table contains teacher information.

| Column   | Data Type    | Constraint  | Description    |
| -------- | ------------ | ----------- | -------------- |
| `t_id`   | INT          | PRIMARY KEY | Teacher ID     |
| `t_name` | VARCHAR(20)  | NOT NULL    | Teacher name   |
| `emaail` | VARCHAR(100) | UNIQUE      | Teacher email  |
| `age`    | INT          | CHECK       | Teacher age    |
| `salary` | INT          | DEFAULT 0   | Teacher salary |

The table uses several SQL constraints:

```sql
CREATE TABLE teacher (
    t_id INT PRIMARY KEY,
    t_name VARCHAR(20) NOT NULL,
    emaail VARCHAR(100) UNIQUE,
    age INT CHECK (age >= 16),
    salary INT DEFAULT 0
);
```

---

## 👨‍🎓 Student Data

The project inserts four students into the `Students` table:

| ID | Name      | Age | Score |
| -: | --------- | --: | ----: |
|  1 | ABA       |  29 |   100 |
|  2 | AHMED     |  30 |   100 |
|  3 | ABDULAAHI |  25 |   100 |
|  4 | MAHAMED   |  21 |   100 |

---

## 👨‍🏫 Teacher Data

One teacher is inserted into the `teacher` table:

| ID | Name | Age | Salary |
| -: | ---- | --: | -----: |
|  1 | ABA  |  29 |    100 |

---

# 🔎 SQL Queries Practiced

## 1. Display All Students

```sql
SELECT * FROM Students;
```

This displays all columns and rows from the `Students` table.

---

## 2. Display All Teachers

```sql
SELECT * FROM teacher;
```

This displays all teacher records.

---

## 3. Select Specific Column

```sql
SELECT std_name FROM Students;
```

This returns only the student names.

---

## 4. DISTINCT

```sql
SELECT DISTINCT age FROM Students;
```

`DISTINCT` is used to return unique age values without duplicates.

---

## 5. WHERE with AND

```sql
SELECT std_name, score
FROM Students
WHERE age > 29 AND score > 90;
```

This returns students whose:

* Age is greater than 29
* Score is greater than 90

---

## 6. NOT Operator

```sql
SELECT std_name, score, age
FROM Students
WHERE NOT age = 29;
```

This returns students whose age is **not 29**.

Another example:

```sql
SELECT *
FROM Students
WHERE NOT age = 21;
```

---

## 7. BETWEEN

```sql
SELECT *
FROM Students
WHERE score BETWEEN 80 AND 50;
```

`BETWEEN` is used to filter values within a specific range.

> **Note:** Normally, the lower value should be written first, for example:

```sql
WHERE score BETWEEN 50 AND 80;
```

Since all students in this dataset have a score of 100, this query would return no records.

---

## 8. LIKE

```sql
SELECT std_name
FROM Students
WHERE std_name LIKE 'A%';
```

The `%` wildcard means that the name starts with **A** and can contain additional characters afterward.

This query therefore finds names such as:

* ABA
* AHMED
* ABDULAAHI

---

## 9. ORDER BY DESC

```sql
SELECT *
FROM Students
ORDER BY score DESC;
```

This sorts students by score from **highest to lowest**.

---

## 10. Select and Sort Specific Columns

```sql
SELECT std_name, score
FROM Students
ORDER BY score DESC;
```

This displays only the student name and score, sorted by score from highest to lowest.

---

# 🎯 Learning Objectives

After completing this project, the learner should understand how to:

1. Create a SQL database.
2. Create tables.
3. Define columns and data types.
4. Apply basic constraints.
5. Insert records into tables.
6. Retrieve data using `SELECT`.
7. Filter data using `WHERE`.
8. Remove duplicate results using `DISTINCT`.
9. Combine conditions using `AND`.
10. Exclude records using `NOT`.
11. Search using `LIKE`.
12. Filter ranges using `BETWEEN`.
13. Sort data using `ORDER BY`.

---

# 🛠️ Technologies Used

* **SQL**
* **MySQL / SQL-compatible Database System**
* Relational Database Concepts

---

# 📁 Project Structure

```text
SQL-School-Database/
│
├── SQLQuery1.sql
└── README.md
```

---

# 🚀 How to Run the Project

### Step 1 — Open SQL Server/MySQL

Open your preferred SQL database environment.

### Step 2 — Open the SQL file

Open:

```text
SQLQuery1.sql
```

### Step 3 — Run the database creation commands

Run:

```sql
CREATE DATABASE school_db;
```

Then:

```sql
USE school_db;
```

### Step 4 — Create the tables

Execute the `CREATE TABLE` statements.

### Step 5 — Insert the data

Execute the `INSERT INTO` statements.

### Step 6 — Test the queries

Run the `SELECT` queries to practice retrieving, filtering, and sorting data.

---

# 📚 SQL Concepts Demonstrated

| SQL Concept     | Used In Project |
| --------------- | --------------- |
| CREATE DATABASE | ✅               |
| USE DATABASE    | ✅               |
| CREATE TABLE    | ✅               |
| PRIMARY KEY     | ✅               |
| NOT NULL        | ✅               |
| UNIQUE          | ✅               |
| CHECK           | ✅               |
| DEFAULT         | ✅               |
| INSERT INTO     | ✅               |
| SELECT          | ✅               |
| DISTINCT        | ✅               |
| WHERE           | ✅               |
| AND             | ✅               |
| NOT             | ✅               |
| BETWEEN         | ✅               |
| LIKE            | ✅               |
| ORDER BY        | ✅               |

---

## 👤 Author

**Abba Muxidiin**

### 📌 Project Type

**SQL Database Practice / School Management Database**

---

## ⭐ Summary

This project provides a simple introduction to SQL through a school database containing students and teachers. It demonstrates fundamental database operations and filtering techniques that can be used as a foundation for more advanced SQL projects.

