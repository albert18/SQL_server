/*
                                       QUIZ TWO

1.	Copy and paste the following create table command in your query pane.

Use AdventureWorks2012
Go

Create Table Names_Test
(Fname varchar (20),
Lname varchar (20),
State char (2),
City varchar (25),
Salary money
)

Then, using the Insert Into command, insert the following data:

Fname:  Mary
Lname:  Jones
State:  NY
City:   New York City
Salary: 3500

2.	Insert just the following values in the table Names_Test

Fname:  Joseph
Salary: 4200

3.	Use the table Names_Test and update the following:
    Update State from NY to CA

4.	Use the table Names_Test and update the following: Update Lname from Jones to Smith and Update Salary from 3500 to 4200

5.	Using the IN operator, find all the data from the following table AdventureWorks2012.Person.Person where FirstName include: Gigi, David, Ken, Morgan

6. What is the difference between Delete and Truncate commands?

7.	Find all the products that range between products named ‘M’ and ‘S’

                                        Scroll down for the answers

*/





















































--1. Copy and paste the following create table command in your query pane.

--Use AdventureWorks2012
--Go

--Create Table Names_Test
--(Fname varchar (20),
--Lname varchar (20),
--State char (2),
--City varchar (25),
--Salary money
--)

--Then, using the Insert Into command, insert the following data:

--Fname:  Mary
--Lname:  Jones
--State:  NY
--City:   New York City
--Salary: 3500

--Answer:

Insert Into Names_Test
Values
('Mary','Jones','NY','New York City',3500)

--2. Insert just the following values in the table Names_Test

--Fname:  Joseph
--Salary: 4200

--Answer:

Insert Into Names_Test (Fname, Salary)
Values
('Joseph',4200)


--3. Use the table Names_Test and update the following:
--   Update State from NY to CA

--Answer:

Update Names_Test
Set [State] = 'NY'
Where [State] = 'CA'

--4. Use the table Names_Test and update the following:
--   Update Lname from Jones to Smith and Update Salary from 3500 to 4200

--Answer:

Update Names_Test
Set Lname = 'Smith',
Salary = 4200
Where Lname = 'Jones' OR Salary = 4200

--5. Using the IN operator, find all the data from the following table AdventureWorks2012.Person.Person where FirstName include: Gigi, David, Ken, Morgan

--Answer:

  SELECT *
  FROM [AdventureWorks2012].[Person].[Person]
  Where FirstName IN ('Gigi','David', 'Ken', 'Morgan')
  Order By FirstName
  --186 rows

--6. What is the difference between Delete and Truncate commands?

--Answer:

--Delete will delete all records from the table and not save any table space.
--Delete can also be used with the where clause to filter data.  
--Truncate deletes all the rows at one time and cannot use the where clause.  
--Truncate releases the space back to the table

--7. Find all the products that range between products named ‘M’ and ‘S’

--Answer:

SELECT [ProductID]
      ,[Name]
      ,[ProductNumber]
      ,[StandardCost]
      ,[ListPrice]
	  ,SellStartDate  
FROM [AdventureWorks2012].[Production].[Product]
WHERE Name BETWEEN 'M' AND 'S'
ORDER BY NAME 
--161 rows



