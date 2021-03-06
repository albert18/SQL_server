
--                                                              Quiz Five

--1. Find the SUM, MIN, MAX, COUNT of [AdventureWorks2012].[Sales].[SalesOrderDetail]

--2. What is a Null value?

--3. Find all Null values in the table Names in the Joins database

--4. The purpose of ISNULL() is to replace a NULL value with another value; Write a query that replaces a Null value with a 'NoMiddleName'for column MiddleName
--in the following table: [AdventureWorks2012]. [Person].[Person]

--5. Use Alter command to add a column called 'Country' to the [TSQL].[dbo].[Names] table with the appropriate data type

--6. What is the total quantizes sold for the item SalesOrderID = '43659'? Use the following table: [AdventureWorks2012].[Sales].[SalesOrderDetail]

--7. What is the total quantizes sold and total count of orders for each SalesOrderID greater than 30? Use the following table: [AdventureWorks2012].[Sales].[SalesOrderDetail].  
--Hint: Use the Having Clause



--                                            Scroll to the bottom to review answers
























































--                                                              Quiz Five

--1. Find the SUM, MIN, MAX, COUNT of SalesOrderDetail

SELECT 
[SalesOrderID],
SUM(OrderQty) AS TotalQty,
MIN(OrderQty) AS MinQty, 
MAX(OrderQty) AS MaxQty, 
COUNT(*) AS TotalOrders
FROM [AdventureWorks2012].[Sales].[SalesOrderDetail]
GROUP BY [SalesOrderID]

--Visual verification:

Select *
From [AdventureWorks2012].[Sales].[SalesOrderDetail]
Where SalesOrderID = 43666

--2. What is a Null value?

--Answer:

--NULL values permit entry of a blank data when the value at the time of entry is unknown

--3. Find all Null values in the table Names in the Joins database

--Answer:

Use TSQL
Go

Select * from Names
Where Social_Security_Number IS NULL

--4. The purpose of ISNULL() is to replace a NULL value with another value; Write a query that replaces a Null value with a 'NoMiddleName'for column MiddleName
--in the following table: [AdventureWorks2012]. [Person]. [Person]

Use AdventureWorks2012
Go

SELECT MiddleName,
ISNULL (MiddleName,'NoMiddleName') AS ReplaceNullValue
FROM [AdventureWorks2012]. [Person]. [Person]

--5. Use Alter command to add a column called 'Country' to the Names table with the appropriate data type

--Answer:

Use TSQL
Go

ALTER TABLE Employee
ADD Country varchar (25)

--Verify
Select * From Employee

--6. What is the total quantizes sold for the item SalesOrderID = '43659'? Use the following table: [AdventureWorks2012]. [Sales]. [SalesOrderDetail]

--Answer:

SELECT [SalesOrderID], SUM ([OrderQty]) AS 'Total Qty'
FROM [AdventureWorks2012]. [Sales]. [SalesOrderDetail]
Where SalesOrderID = '43659'
GROUP BY [SalesOrderID]
ORDER BY [SalesOrderID]


--7. What is the total quantizes sold and total count of orders for each SalesOrderID greater than 30? Use the following table: [AdventureWorks2012]. [Sales]. [SalesOrderDetail].  
--Hint: Use the Having Clause

SELECT [SalesOrderID], SUM ([OrderQty]) AS 'Total Qty', COUNT (*) as TotalOrders
FROM [AdventureWorks2012]. [Sales]. [SalesOrderDetail]
--WHERE [SalesOrderID] IN (43659, 43660, 43661, 43662)
GROUP BY [SalesOrderID]
HAVING COUNT (*) > 30 --<< Having clause when executed, will filter the GROUP BY results based on this condition
ORDER BY [SalesOrderID]
--747 rows