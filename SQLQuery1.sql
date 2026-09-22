create database school_db;

USE school_db;

create table Students(
std_id int,
std_name Varchar(20),
eamil Varchar(20),
age int,
score int
);


create table teacher (
t_id int primary key ,
t_name varchar(20) not null ,
emaail varchar(100) unique,
age int check (age >=16),
salary int DEFAULT 0
)

INSERT INTO Students 
(std_id,std_name,eamil,age,score)
VALUES
(1,'ABA','ABBA@GMAIL.COM', 29, 100),
(2,'AHMED','ABBA@GMAIL.COM', 30, 100),
(3,'ABDULAAHI','ABBA@GMAIL.COM', 25, 100),
(4,'MAHAMED','ABBA@GMAIL.COM', 21, 100)

INSERT INTO teacher (t_id,t_name,emaail,age,salary)
Values
(1,'ABA','ABBA@GMAIL.COM', 29, 100)

SELECT * FROM Students
SELECT * FROM teacher

SELECT std_name from Students

SELECT DISTINCT age from Students

Select std_name,score from Students where age>29 and score>90


select std_name, score,age from Students 
where not age = 29

select * from Students where not age  = 21

select * from Students where score between 80 and 50

select std_name from Students where std_name like 'A%'

select * from Students 
order by score DESC;

select std_name , score from Students 
order by score DESC;



