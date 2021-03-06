

--Command used to insert a new record(s) into a table

  Use TSQL
  Go

  --Drop table Names2

  --Create a table. Table is created allowing null values; which means that unknown data is permitted to be inserted in to columns

  Create Table Names2
  (Fname varchar (20),
  Lname varchar (20),
  State char (2),
  City varchar (25),
  Salary money
  )

--Using the table we created earlier, insert new single record into table called Names

Select * from Names2

--Using Syntax1, inserting a SINGLE record with all values into a table NOT using column titles

--Syntax1
Insert into Names2 
Values 
('Henry','Jones','WA','Seattle', 3000)

Select * from Names2

--Using Syntax1, inserting MULTIPLE records with all values into a table NOT using column titles, separated by commas

--Syntax2
Insert into Names2 
Values 
('Scott','Warren','DC','District', 3466),
('Lucy','Smarts','WI','Greenbay', 1566),
('Danny','Ash','MO','Farnsworth', 2111)

Select * from Names2

--Using Syntax2, inserting a SINGLE record with specified values into a table USING column titles

Insert into Names2 (Fname, Lname, [State], City, Salary)--<< USE PARENTHESIS
Values ('Ralph','Saunders','VA','Henson', 4188)

Select * from Names2

--Insert an unknown value (Null) into columns using specified columns names

Insert into Names2 (Fname, Lname, [State], City, Salary)--<< USE PARENTHESIS
Values ('Dennis', 'Wilkes', Null, Null, Null)

Select * from Names2

--When inserting data into specified fields and omitting other data, by default a Null value will be placed

Insert into Names2 (Fname, Lname)--<< USE PARENTHESIS
Values ('Mandy', 'Booth')

Select * from Names2

