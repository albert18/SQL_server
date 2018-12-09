/*                                       
                                     Quiz One

1.	Write a query that selects all the columns from the table AdventureWorks2012.HumanResources.Department

2.	Write a query that selects the FirstName, MiddleName,LastName from the table Person.Person where the LastName has a pattern containing ‘so’

3.	Table AdventureWorks2012.Sales.SalesOrderDetail has a column called SalesOrderID.  How many distinct (non-duplicate fields) SalesOrderID are there?

4.	Select all the data from table AdventureWorks2012.Sales.SalesTerritory where the ID = 5 OR the Group is Europe

5.	Sort the table [AdventureWorks2012].[Sales].[Currency] with the Name field in a descending order

                                Scroll down for answers

*/












































































--1. Write a query that selects all the columns from the table AdventureWorks2012.HumanResources.Department

--Answer:

SELECT *
FROM [AdventureWorks2012].[HumanResources].[Department]
--16 rows

--2. Write a query that selects the FirstName, MiddleName,LastName from the table AdventureWorks2012.Person.Person where the LastName has a pattern containing ‘so’

--Answer:

SELECT 
[FirstName],
[MiddleName],
[LastName]
FROM [AdventureWorks2012].[Person].[Person]
WHERE LastName like '%so%'
--1363 ROWS

--3. Table AdventureWorks2012.Sales.SalesOrderDetail has a column called SalesOrderID.  How many distinct (non-duplicate fields) SalesOrderID are there?

--Answer:

SELECT Distinct [SalesOrderID]
FROM [AdventureWorks2012].[Sales].[SalesOrderDetail]
--31465 rows

--4. Select all the data from table AdventureWorks2012.Sales.SalesTerritory where the ID = 5 OR the Group is Europe

--Answer:

SELECT *
From [AdventureWorks2012].[Sales].[SalesTerritory]
Where TerritoryID = 5 OR [Group] = 'Europe'
--4 rows

--5. Sort the table [AdventureWorks2012].[Sales].[Currency] with the Name field in a descending order

--Answer:

SELECT [CurrencyCode]
      ,[Name]
      ,[ModifiedDate]
  FROM [AdventureWorks2012].[Sales].[Currency]
  ORDER BY Name DESC
--105 rows



