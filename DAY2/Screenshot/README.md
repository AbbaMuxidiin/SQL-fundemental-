SQL Customer Data Cleaning Project
Project Overview
This project demonstrates how to inspect, clean, standardize, and
validate customer data using Microsoft SQL Server.
The Customers table contains customer information such as customer ID,
full name, gender, city, phone number, email, age, and registration
date. The main purpose of the project is to identify common data-quality
problems and clean the dataset using SQL.
Table Structure
The Customers table contains the following columns:
  Column                  Data Type               Description
  customer_id           INT                     Unique customer
                                                  identifier
  full_name             VARCHAR(100)            Customer full name
  gender_raw            VARCHAR(20)             Customer gender
                                                  before/after
                                                  standardization
  city_raw              VARCHAR(50)             Customer city
  phone                 VARCHAR(30)             Customer phone number
  email                 VARCHAR(120)            Customer email address
  age_text              VARCHAR(20)             Customer age stored as
                                                  text
  registration_date     DATE                    Customer registration
                                              date
The table uses customer_id as its primary key.
Data Cleaning Process
1. Detect Missing Values
Missing values were counted for every important column using SUM,
CASE WHEN, and IS NULL.
SELECT
    SUM(CASE WHEN customer_id IS NULL THEN 1 ELSE 0 END) AS customer_id_missing,
    SUM(CASE WHEN full_name IS NULL THEN 1 ELSE 0 END) AS full_name_missing,
    SUM(CASE WHEN gender_raw IS NULL THEN 1 ELSE 0 END) AS gender_missing,
    SUM(CASE WHEN city_raw IS NULL THEN 1 ELSE 0 END) AS city_missing,
    SUM(CASE WHEN phone IS NULL THEN 1 ELSE 0 END) AS phone_missing,
    SUM(CASE WHEN email IS NULL THEN 1 ELSE 0 END) AS email_missing,
    SUM(CASE WHEN age_text IS NULL THEN 1 ELSE 0 END) AS age_missing,
    SUM(CASE WHEN registration_date IS NULL THEN 1 ELSE 0 END) AS registration_date_missing
FROM Customers;
The inspection identified missing values in gender_raw, phone,
email, and age_text.
2. Display Missing Phone Values with COALESCE
COALESCE() was used to display a readable replacement when a phone
number is NULL.
SELECT
    full_name,
    COALESCE(phone, 'Not Available') AS phone
FROM Customers;
This changes only the query output and does not permanently modify the
table.
3. Update Missing Phone Values
Missing phone values can be permanently replaced with a chosen
placeholder.
UPDATE Customers
SET phone = 'Not Available'
WHERE phone IS NULL;
Note: In the screenshots, an empty string was also tested. For data
quality, using NULL or a clear value such as Not Available is
usually easier to interpret than ''.

4. Remove Extra Spaces from Names
TRIM() was used to inspect cleaned names, and an UPDATE statement
removed unnecessary leading and trailing spaces.
SELECT TRIM(full_name) AS fullName
FROM Customers;

UPDATE Customers
SET full_name = LTRIM(RTRIM(full_name))
WHERE full_name IS NOT NULL;
5. Find Missing Gender Values
SELECT customer_id, full_name, gender_raw
FROM Customers
WHERE gender_raw IS NULL;
The query identified customers whose gender value was missing.
6. Fill Selected Missing Gender Values
After checking the relevant customer records, selected IDs were updated.
UPDATE Customers
SET gender_raw = 'Male'
WHERE customer_id IN (1, 16);

UPDATE Customers
SET gender_raw = 'Female'
WHERE customer_id IN (20, 26, 27, 43, 71, 95, 114);
7. Inspect Inconsistent Gender Values
A case-sensitive/binary collation was used to reveal variations such as
Female, female, FEMALE, F, Male, male, MALE, and M.
SELECT
    gender_raw COLLATE Latin1_General_100_BIN2 AS gender_value,
    COUNT(*) AS frequency
FROM Customers
GROUP BY gender_raw COLLATE Latin1_General_100_BIN2
ORDER BY frequency DESC;
This step is useful for detecting inconsistent capitalization and
abbreviations that may otherwise appear equivalent under a
case-insensitive collation.
8. Standardize Gender Values
Different representations were converted into two consistent categories:
Male and Female.
UPDATE Customers
SET gender_raw =
    CASE
        WHEN LOWER(LTRIM(RTRIM(gender_raw))) IN ('male', 'm')
            THEN 'Male'
        WHEN LOWER(LTRIM(RTRIM(gender_raw))) IN ('female', 'f')
            THEN 'Female'
        ELSE gender_raw
    END
WHERE gender_raw IS NOT NULL;
9. Inspect the Table Definition
sp_help was used to inspect column names, data types, lengths,
nullability, collation, and indexes.
EXEC sp_help Customers;
This confirmed the table structure and showed that customer_id is the
primary key.
SQL Techniques Used
- SELECT
- UPDATE
- WHERE
- IS NULL / IS NOT NULL
- CASE
- SUM
- COUNT
- COALESCE
- TRIM, LTRIM, and RTRIM
- LOWER
- IN
- GROUP BY
- ORDER BY
- COLLATE
- sp_help
Key Data Quality Problems Addressed
The project addresses missing values, extra whitespace,
inconsistent capitalization, gender abbreviations, and
inconsistent categorical values.
Recommended Validation
After cleaning, run validation queries to confirm that the problems were
resolved:
-- Check remaining NULL values
SELECT
    SUM(CASE WHEN gender_raw IS NULL THEN 1 ELSE 0 END) AS gender_missing,
    SUM(CASE WHEN phone IS NULL THEN 1 ELSE 0 END) AS phone_missing
FROM Customers;

-- Check standardized gender categories
SELECT gender_raw, COUNT(*) AS frequency
FROM Customers
GROUP BY gender_raw
ORDER BY frequency DESC;
Conclusion
This project demonstrates a practical SQL data-cleaning workflow:
inspect the data → identify quality problems → clean missing and
inconsistent values → standardize categories → validate the results.
These techniques prepare customer data for reliable reporting, analysis,
dashboards, and further database operations.
Project: Customer Data Cleaning Using SQL Server
Database Table: Customers
Tool: Microsoft SQL Server / SQL Server Management Studio
