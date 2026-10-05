SQL Practice Database -- Data Cleaning Project
Project Overview
This project is a SQL Server practice database designed for learning
database creation, data cleaning, data-quality inspection, and SQL
querying.
The database is named Practice and contains deliberately
inconsistent and missing values so that common real-world data-cleaning
techniques can be practiced.
Database Tables
The SQL script creates the following main tables:
  Table         Purpose
  Branches    Stores branch names and cities
  Customers   Stores customer details
  Products    Stores products, categories, and prices
  Employees   Stores employee and branch information
  Orders      Stores customer order transactions
The dataset contains:
- 5 Branch records
- 120 Customer records
- 45 Product records
- 30 Employee records
- 300 Order records
Customer Table
The main data-cleaning practice in this script focuses on the
Customers table.
CREATE TABLE Customers (
    customer_id INT PRIMARY KEY,
    full_name VARCHAR(100),
    gender_raw VARCHAR(20),
    city_raw VARCHAR(50),
    phone VARCHAR(30),
    email VARCHAR(120),
    age_text VARCHAR(20),
    registration_date DATE
);
Customer Data Quality Issues
The customer dataset intentionally contains issues such as:
- NULL / missing values
- Extra spaces in names and cities
- Different letter cases
- Inconsistent gender values such as Male, male, MALE, M,
  Female, female, FEMALE, and F
- Different city spellings and capitalization
- Missing phone numbers
- Missing emails
- Phone-number formatting differences
- Age stored as text
- Age values such as 49 years, 45 years, and 66 years
Data Cleaning Steps
1. Check Missing Values
The following query counts NULL values in important customer columns:
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
This helps identify which columns require cleaning.
2. Handle Missing Phone Numbers with COALESCE
SELECT
    full_name,
    COALESCE(phone, 'Not Available') AS phone
FROM Customers;
COALESCE() displays Not Available when phone is NULL without
changing the original stored value.
3. Update Missing Phone Values
The script also practices updating missing phone values:
UPDATE Customers
SET phone = ''
WHERE phone IS NULL;
For a production dataset, keeping unknown values as NULL or using a
clearly documented placeholder is generally preferable to an empty
string.
4. Remove Extra Spaces from Customer Names
First, TRIM() can be used to preview cleaned names:
SELECT TRIM(full_name) AS fullName
FROM Customers;
The stored values can then be cleaned:
UPDATE Customers
SET full_name = LTRIM(TRIM(full_name))
WHERE full_name IS NOT NULL;
This removes unnecessary leading and trailing spaces.
5. Find Missing Gender Values
SELECT customer_id, full_name, gender_raw
FROM Customers
WHERE gender_raw IS NULL;
This identifies customers whose gender field is missing.
6. Fill Missing Gender Values
The script practices updating selected records with standardized values.
Example:
UPDATE Customers
SET gender_raw = 'Female'
WHERE customer_id IN (20, 26, 27, 43, 71, 95, 114);
Before making this type of update in a real project, the replacement
value should be verified from a reliable source rather than inferred
from a person's name.
7. Detect Inconsistent Gender Categories
A binary collation is used to make differences in capitalization
visible:
SELECT
    gender_raw COLLATE Latin1_General_100_BIN2 AS gender_value,
    COUNT(*) AS frequency
FROM Customers
GROUP BY gender_raw COLLATE Latin1_General_100_BIN2
ORDER BY frequency DESC;
This can reveal categories such as:
- Male
- male
- MALE
- M
- Female
- female
- FEMALE
- F
8. Standardize Gender Values
UPDATE Customers
SET gender_raw =
    CASE
        WHEN LOWER(LTRIM(TRIM(gender_raw))) IN ('male', 'm')
            THEN 'Male'
        WHEN LOWER(LTRIM(TRIM(gender_raw))) IN ('female', 'f')
            THEN 'Female'
        ELSE gender_raw
    END
WHERE gender_raw IS NOT NULL;
After this operation, valid gender variants are standardized to Male
and Female.
9. Inspect the Customers Table
EXEC sp_help Customers;
sp_help displays information about:
- Column names
- Data types
- Column lengths
- NULL settings
- Collation
- Primary keys and indexes
10. Inspect Age Conversion
The age_text column is stored as VARCHAR, even though age is
normally numeric.
The script explores conversion with:
SELECT CAST(age_text AS INT)
FROM Customers;
Because some records contain text such as 49 years, a safer inspection
method is:
SELECT customer_id, age_text
FROM Customers
WHERE TRY_CAST(age_text AS INT) IS NULL
  AND age_text IS NOT NULL;
TRY_CAST() is useful because invalid numeric text returns NULL
instead of stopping the entire query with a conversion error.
Other Dirty Data Available for Practice
The other tables also contain useful data-quality problems.
Products
The Products table includes inconsistent category capitalization and
prices stored as text. Some prices include a $ symbol.
Examples include:
Electronics
ELECTRONICS
electronics
 Office Supplies
$252.90
These values can be cleaned using TRIM, LOWER/UPPER, REPLACE,
CAST, or TRY_CAST.
Orders
The Orders table contains 300 transactions and includes fields such
as:
- Customer
- Product
- Employee
- Branch
- Order date
- Quantity
- Unit price
- Discount
- Payment method
- Order status
- Notes
It also contains inconsistent values such as different capitalization
for payment methods and order statuses, NULL values, and extra spaces in
notes. This makes the table useful for additional cleaning and analysis
practice.
SQL Concepts Practiced
This project demonstrates:
- CREATE DATABASE
- CREATE TABLE
- DROP TABLE IF EXISTS
- INSERT INTO
- SELECT
- UPDATE
- WHERE
- IS NULL
- IS NOT NULL
- CASE
- SUM
- COUNT
- COALESCE
- TRIM
- LTRIM
- LOWER
- IN
- GROUP BY
- ORDER BY
- COLLATE
- CAST
- TRY_CAST
- sp_help
Recommended Next Steps
After cleaning the Customers table, the project can be extended by:
1. Standardizing city_raw.
2. Cleaning and validating email addresses.
3. Standardizing phone-number formats.
4. Converting age_text into a numeric age column.
5. Cleaning Products.category_raw.
6. Converting Products.unit_price_text into a numeric field.
7. Standardizing payment methods and order statuses.
8. Joining Customers, Orders, Products, Employees, and Branches.
9. Calculating sales KPIs.
10. Building summary queries for dashboards and reports.
Conclusion
This SQL practice project provides a realistic environment for learning
data cleaning and database analysis with SQL Server. It demonstrates
how raw data can contain missing values, inconsistent categories,
formatting problems, and incorrect data types.
The general workflow is:
Inspect → Identify Problems → Clean → Standardize → Convert → Validate
→ Analyze
Project Name: SQL Practice Database -- Data Cleaning
Database: Practice
Database System: Microsoft SQL Server / Azure SQL
Main Practice Table: Customers
