SELECT        
Person.StateProvince.Name, 
Sales.SalesTerritory.SalesLastYear,  
Sales.SalesTerritory.TerritoryID
FROM            
Person.StateProvince 
INNER JOIN
Sales.SalesTerritory 
ON Person.StateProvince.TerritoryID = Sales.SalesTerritory.TerritoryID
Order By Sales.SalesTerritory.TerritoryID



select TerritoryID,Name, SalesLastYear, SalesYTD ,*
from  Sales.SalesTerritory
Order By 1

SELECT StateProvinceCode,Name, TerritoryID ,*      
FROM            
Person.StateProvince 
Order By 3

--How many name columns begin with the letter 'A'

Select * 
From Person.StateProvince 
Where Name Like 'a%'


--Which region (Name) made the highest SalesYTD? Use a Subquery

Select * 
From Sales.SalesTerritory
Where SalesYTD = (Select Max(SalesYTD)
                  From Sales.SalesTerritory AS HighestSales)

--How many territories are there in the Northwest region?

Select Name,count(*) AS [Total Territories]
From Person.StateProvince 
Where TerritoryID = 1
Group By Name


/****** Script for SelectTopNRows command from SSMS  ******/
SELECT 
       [ProductID]
      ,[ReviewerName]
      ,[ReviewDate]
      ,[Rating]
      ,[Comments]
  FROM [AdventureWorks2012].[Production].[ProductReview]


/****** Script for SelectTopNRows command from SSMS  ******/
SELECT  
      [ProductID],
      [Name],
      [ProductNumber],
      [Color],
      [StandardCost],
      [Size],
      [Style],
      [SellStartDate],
      [SellEndDate]
  FROM [AdventureWorks2012].[Production].[Product]
 -- where ProductID = 709


  /*1. Which product was the most expensive in the  [AdventureWorks2012].[Production].[Product] table?
  Please give me the name, and the price of the product so that i can buy it for my wife? */

  Select  MAX(StandardCost) AS [The Most Expensive]
  From [AdventureWorks2012].[Production].[Product]

  Select ProductID, Name, MAX(StandardCost) AS [The Most Expensive]
  From [AdventureWorks2012].[Production].[Product]
  Group By ProductID, Name
  Having MAX(StandardCost)>= 2171.2942
  Order By [The Most Expensive] Desc




  /*1. 
  Review the [AdventureWorks2012].[Production].[ProductReview] table and can you tell me
  what specfic product was John Smith praising about from the product table [AdventureWorks2012].[Production].[Product]
  i'd like to get that product to for my trip*/

  Select p.[Name], p.[ProductID],pr.[Comments]
  From 
  [AdventureWorks2012].[Production].[ProductReview] as pr
  Inner Join
  [AdventureWorks2012].[Production].[Product] as p
  ON pr.productid =  p.productid
  where pr.reviewername = 'John Smith'

  --2.  I tried the Mountain Bike Socks and they were great!  Can you replace his comments from 'lightweight' 'increadibley light' in upper case

  Select p.[Name], p.[ProductID],Replace(pr.[Comments],'lightweight', UPPER('Incredibley_Lightweight'))AS Comments
  From 
  [AdventureWorks2012].[Production].[ProductReview] as pr
  Inner Join
  [AdventureWorks2012].[Production].[Product] as p
  ON pr.productid =  p.productid
  where pr.reviewername = 'John Smith'



  Use TSQL
  Go

  Create Table People
  (Fname varchar (20),
  Lname varchar (20),
  DateOfBirth varchar (20),
  Gender char (1))

  Insert Into People
  Values ('Bob','Smith','02-01-1961','M'),
  ('Brandy','Jones','04-16-1981','F'),
  ('Leslie','Mellon','05-01-2000','F'),
  ('Henry','Wonders','02-01-1961','M'),
  ('Jack','Palmer','07-10-1941','M')

  Select * From People

  ---what is the age of Henry in months,days,mins?

Select Fname, Lname, dateofbirth,Datediff(day,dateofbirth, GETDATE()) AS AgeInDays,
Datediff(month,dateofbirth, GETDATE()) AS AgeInMonth,
Datediff(MINUTE,dateofbirth, GETDATE()) AS AgeInMinutes
From People
Where Fname = 'Henry'

--Select all those people who are female and change the F to Female


Select Fname, Lname, Gender,
CASE When gender = 'F' Then 'Female'
Else 'Male'
End As 'Females'
From People
Where Gender = 'F'


