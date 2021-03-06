
--The update commands modify the content of one or more columns in a table.

--When using the update command, it is CRITCAL that the WHERE clause be used, otherwise the entire column(s) is updated!!!

--Use Update clause to update multiple columns

SELECT *
FROM [AdventureWorks2012].[Purchasing].[Vendor]

--Backup table before updating

Select * Into [AdventureWorks2012].[Purchasing].[Vendor_062715] 
From [AdventureWorks2012].[Purchasing].[Vendor]
--(104 row(s) affected)

--Using update command to update a single record

SELECT *
FROM [AdventureWorks2012].[Purchasing].[Vendor_062715]


Update [AdventureWorks2012].[Purchasing].[Vendor_062715]
Set Name = 'USA Bike Retailer'
Where Name = 'Australia Bike Retailer'--<< using a where clause! a single row (column) updated

SELECT *
FROM [AdventureWorks2012].[Purchasing].[Vendor_062715]

--Update a single record WITHOUT the WHERE clause - all data in column is updated.  Dangerous!!

Update [AdventureWorks2012].[Purchasing].[Vendor_062715]
Set Name = 'USA Bike Retailer'

SELECT *
FROM [AdventureWorks2012].[Purchasing].[Vendor_062715]

--Update more than one column at a time

Update [AdventureWorks2012].[Purchasing].[Vendor_062715]
Set 
Name = 'USA Bike Retailer',
AccountNumber = 'ABCDEFG'
Where BusinessEntityID = 1492

SELECT *
FROM [AdventureWorks2012].[Purchasing].[Vendor_062715]

--Restoring the original table. Note that the constraints are not restored.

Drop table [AdventureWorks2012].[Purchasing].[Vendor_062715]

--Using an expression to update a column

--Backup table.  Use the backup table for testing.

Select * Into [AdventureWorks2012].[Sales].[SalesOrderDetail_062715] 
From [AdventureWorks2012].[Sales].[SalesOrderDetail]
--(121317 row(s) affected)

SELECT 
      [SalesOrderDetailID]
      ,[OrderQty]
      ,[ProductID]
      ,[UnitPrice]
      ,[LineTotal]
      ,[ModifiedDate]
  FROM [AdventureWorks2012].[Sales].[SalesOrderDetail_062715] 

--If you run the update again, it will add the value.  So comment out the update, when done!

Update [AdventureWorks2012].[Sales].[SalesOrderDetail_062715] 
Set OrderQty = OrderQty + 3
Where SalesOrderDetailID = 1

SELECT 
      [SalesOrderDetailID]
      ,[OrderQty]
      ,[ProductID]
      ,[UnitPrice]
      ,[LineTotal]
      ,[ModifiedDate]
  FROM [AdventureWorks2012].[Sales].[SalesOrderDetail_062715] 
  Where SalesOrderDetailID = 1


--Restore the original table

Drop table [AdventureWorks2012].[Sales].[SalesOrderDetail_062715] 

Select *  FROM [AdventureWorks2012].[Purchasing].[Vendor] 

DROP TABLE [AdventureWorks2012].[Purchasing].[Vendor_062715] 



