
/*

What is a database?

In the simplest terms, any collection of raw data.  The raw data in an Excel sheet is a database, but limited to space, security, querying

What is a SQL database?

Think of a database as a ‘container’ that holds different objects.  
The most common type of an object is the table - much like an Excel sheet - which holds raw data.

What is a table?

A table consists of fields/columns and rows/records.  
Much like an Excel sheet, the vertical columns’ purpose is to hold data referencing the type of data for the names column.  
The purpose of the rows is to contain data for each cell of the column.*/

SELECT * FROM [TSQL].[dbo].[Books]

/*
What is a SQL Relational Database Management System (RDBMS)?

It’s an application that allows the user to manage, manipulate, query, modify, and alter the raw data in the tables into producing information.

	--Benefits of a SQL Relational Database Management System (RDbMS)
	--Holding container for raw data and objects - such as text, numbers, images, decimals
	--Allows user to create, read, update, and delete (CRUD) raw data into information
	--Provides security for data
	--Permits redundancy for databases to different locations
	--Manages the size of ever growing data
	--Helps companies with decision making - reports
*/


--Illustration of Relational Database Management System (RDBMS)- Simply put, seperate the tables into 2 tables, and join them with a common key.

--drop table Classes
--drop table Students

--Create a seperate table called Students

Create Table Students
(StudentID int not null Identity (1,1) Primary Key,
Fname varchar (20),
Lname varchar (20),
Age varchar (20),
Gender varchar (20),
[Address] varchar (20),
City varchar (20),
State varchar (20),
Zip varchar (20)
)


--Create a seperate table classes

Create Table Classes
(
ClassID int,
ClassName varchar (50),
StudentID int CONSTRAINT fk_Students FOREIGN KEY (StudentID) REFERENCES Students (StudentID)--<< reference the Students table
)


--insert records into students table

Insert Into Students
Values ('Bob','Smith','18','M','123 Elm Street','Irvine','Ca','92618'),
       ('John','Anderson','19','M','555 main Street','Fullerton','Ca','92065'),
	   ('Mary','Hope','19','F','Flower Street','Baker','NY','21545')

--insert records into classes table

Insert Into Classes
Values (1,'Math',1),
       (2,'Chemistry',2),
	   (3,'Biology',3)

 
--view data

Select * From Students 
Select * From Classes Order By StudentID

--Bob wants to take another class - just insert a record in the class table

INSERT INTO Classes (ClassID, ClassName, StudentID)
VALUES (3, 'Biology', 1)--<< Studentid 1 is Bob

--Confirm the addition of classs

Select * From Students 
Select * From Classes Order By StudentID

--Query which clasess is Bob taking?

SELECT 
Classes.ClassName, Students.Fname, Students.Lname
FROM            
Classes 
INNER JOIN
Students 
ON Classes.StudentID = Students.StudentID
WHERE (Students.Fname = 'bob')






