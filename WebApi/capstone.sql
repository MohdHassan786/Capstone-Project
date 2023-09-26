create database Capstone
use Capstone
CREATE TABLE AdminInfo (
	Id int Primary Key identity(1,1),
    EmailId VARCHAR(255),
    Password VARCHAR(255)
);

CREATE TABLE EmpInfo (
	Id int Primary Key identity(1,1),
    EmailId VARCHAR(255) unique,
    Name VARCHAR(255),
    DateOfJoining DATETIME,
    PassCode INT
);

CREATE TABLE BlogInfo (
    BlogId INT PRIMARY KEY identity(1,1),
    Title VARCHAR(255),
    Subject VARCHAR(255),
    DateOfCreation DATETIME,
    BlogUrl VARCHAR(255),
    EmpEmailId VARCHAR(255),
);

Insert into AdminInfo(EmailId,Password) Values ('Zohaib','Sheikh')

INSERT INTO EmpInfo (EmailId, Name, DateOfJoining, PassCode)
VALUES ('arish@gmail.com', 'Mohd Arish', '2023-07-23 10:00:00', 12345);

INSERT INTO EmpInfo (EmailId, Name, DateOfJoining, PassCode)
VALUES ('arsalan@gmail.com', 'Arsalan Sheikh', '2023-05-25 09:45:00', 54321);

INSERT INTO BlogInfo ( Title, Subject, DateOfCreation, BlogUrl, EmpEmailId)
VALUES ('Introduction to SQL', 'Database Management', '2023-09-24 14:30:00', 'https://example.com/sql-intro', 'arish@gmail.com');

INSERT INTO BlogInfo ( Title, Subject, DateOfCreation, BlogUrl, EmpEmailId)
VALUES ( 'Advanced SQL Techniques', 'Database Optimization', '2023-09-26 16:15:00', 'https://example.com/advanced-sql','arsalan@gmail.com');

Select * from AdminInfo
Select * from EmpInfo
Select * from BlogInfo