
--Final Quiz:

/* Run the Select * from AdventureWorks2012.Person.StateProvince  
and tell me how many name columns begin with the letter 'A' */


/* Which region (Name) made the highest SalesYTD? Use a Subquery
Hint: Use a subquery to find Max value of the highest SaleYTD first */


/* Using this table AdventureWorks2012.Person.StateProvince 
How many territories are there in the Northwest region where TerritoryID = 1 */


/* Which product was the most expensive in the [AdventureWorks2012].[Production].[Product] table?
Please give me the name, and the price of the product so that i can buy it for my wife? */


/*
Execute:
Select * From [AdventureWorks2012].[Production].[ProductReview] 
Select * From [AdventureWorks2012].[Production].[Product]
and tell me what specfic product was John Smith praising about
Hint:  Use a Join for [AdventureWorks2012].[Production].[ProductReview] and  [AdventureWorks2012].[Production].[Product]
*/

/* 
I tried the Mountain Bike Socks and they were great!  Can you replace his comments from 'lightweight' 'increadibley light' in upper case.
Hint: Use the Replace and Upper commands with an inner join */

--This table has beem created and has data inserted

--Use TSQL
--Go

--Create Table People
--(Fname varchar (20),
--Lname varchar (20),
--DateOfBirth varchar (20),
--Gender char (1))

--Insert Into People
--Values ('Bob','Smith','02-01-1961','M'),
--('Brandy','Jones','04-16-1981','F'),
--('Leslie','Mellon','05-01-2000','F'),
--('Henry','Wonders','02-01-1961','M'),
--('Jack','Palmer','07-10-1941','M')

--Select * From People

/* What is the age of Henry in months,days,mins?
Hint: use datediff */


/* Select all those people who are female and change the F to Female from the People table
Hint: Use a case statement */

--Drop the table People


 ------------------------------------------Scrol down for answers-----------------------------------------

















































































 
--Final Quiz:

/* Run a Select * from AdventureWorks2012.Person.StateProvince  
and tell me how many name columns begin with the letter 'A' */

Select * 
From AdventureWorks2012.Person.StateProvince
Where Name Like 'a%'


/* Which region (Name) made the highest SalesYTD? Use a Subquery
Hint: Use a subquery to find Max value of the highest SaleYTD first */

Select * 
From AdventureWorks2012.Sales.SalesTerritory
Where SalesYTD = (Select Max(SalesYTD)
                  From AdventureWorks2012.Sales.SalesTerritory AS HighestSales)

/* Using this table AdventureWorks2012.Person.StateProvince 
How many territories are there in the Northwest region where TerritoryID = 1 */

Select Name
From AdventureWorks2012.Person.StateProvince 
Where TerritoryID = 1
Group By Name


  /* Which product was the most expensive in the [AdventureWorks2012].[Production].[Product] table?
  Please give me the name, and the price of the product so that i can buy it for my wife? */

  Select  MAX(StandardCost) AS [The Most Expensive]
  From [AdventureWorks2012].[Production].[Product]

  Select ProductID, Name, MAX(StandardCost) AS [The Most Expensive]
  From [AdventureWorks2012].[Production].[Product]
  Group By ProductID, Name
  Having MAX(StandardCost)>= 2171.2942
  Order By [The Most Expensive] Desc


/*
Execute:
Select * From [AdventureWorks2012].[Production].[ProductReview] 
Select * From [AdventureWorks2012].[Production].[Product]
and tell me what specfic product was John Smith praising about
Hint:  Use a Join for [AdventureWorks2012].[Production].[ProductReview] and  [AdventureWorks2012].[Production].[Product]

*/

  Select p.[Name], p.[ProductID],pr.[Comments]
  From 
  [AdventureWorks2012].[Production].[ProductReview] as pr
  Inner Join
  [AdventureWorks2012].[Production].[Product] as p
  ON pr.productid =  p.productid
  where pr.reviewername = 'John Smith'

/* 
I tried the Mountain Bike Socks and they were great!  Can you replace his comments from 'lightweight' 'increadibley light' in upper case.
Hint: Use the Replace and Upper commands with an inner join */

  Select p.[Name], p.[ProductID],Replace(pr.[Comments],'lightweight', UPPER('Incredibley_Lightweight'))AS Comments
  From 
  [AdventureWorks2012].[Production].[ProductReview] as pr
  Inner Join
  [AdventureWorks2012].[Production].[Product] as p
  ON pr.productid =  p.productid
  where pr.reviewername = 'John Smith'


 --This table has beem created and has data inserted

  --Use TSQL
  --Go

  --Create Table People
  --(Fname varchar (20),
  --Lname varchar (20),
  --DateOfBirth varchar (20),
  --Gender char (1))

  --Insert Into People
  --Values ('Bob','Smith','02-01-1961','M'),
  --('Brandy','Jones','04-16-1981','F'),
  --('Leslie','Mellon','05-01-2000','F'),
  --('Henry','Wonders','02-01-1961','M'),
  --('Jack','Palmer','07-10-1941','M')

  --Select * From People

 /* What is the age of Henry in months,days,mins?
 Hint: use datediff */

Select Fname, Lname, dateofbirth,Datediff(day,dateofbirth, GETDATE()) AS AgeInDays,
Datediff(month,dateofbirth, GETDATE()) AS AgeInMonth,
Datediff(MINUTE,dateofbirth, GETDATE()) AS AgeInMinutes
From People
Where Fname = 'Henry'

/* Select all those people who are female and change the F to Female from the People table
Hint: Use a case statement */

Select Fname, Lname, Gender,
CASE When gender = 'F' Then 'Female'
Else 'Male'
End As 'Females'
From People
Where Gender = 'F'

--Drop the table People

 Drop Table People


