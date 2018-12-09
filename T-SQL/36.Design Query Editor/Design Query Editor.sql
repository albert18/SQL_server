/*How to use the Design Query Editor
Allows us to select tables and columns 'without' writing code!
Can modify the query in the Query Editor by inserting code*/

USE AdventureWorks2012
GO

SELECT        
Production.ProductCategory.Name AS ProductCategory, 
Production.ProductSubcategory.Name AS ProductSubcategory, 
Production.Product.Name, 
Production.Product.Color, 
Production.Product.ListPrice, 
--CASE 
--WHEN Production. Product .ListPrice >= 2500 THEN 'Expensive' 
--WHEN Production. Product .ListPrice BETWEEN 500 AND 2499 THEN 'ModeratePrice' 
--WHEN Production. Product .ListPrice BETWEEN 1 AND 499 THEN 'Inexpensive' 
--ELSE 'Too Expensive' 
--END AS [Can I Afford], 
Production.Product.Size, Production.Product.Style, Production.Product.Weight, Production.Product.ProductID
FROM     
Production.Product 
INNER JOIN
Production.ProductSubcategory 
ON Production.Product.ProductSubcategoryID = Production.ProductSubcategory.ProductSubcategoryID 
INNER JOIN
Production.ProductCategory 
ON Production.ProductSubcategory.ProductCategoryID = Production.ProductCategory.ProductCategoryID
GROUP BY Production.ProductSubcategory.Name, 
Production.ProductCategory.Name, 
Production.Product.Name, 
Production.Product.Color, 
Production.Product.ListPrice, 
Production.Product.Size, 
Production.Product.Style, 
Production.Product.Weight, 
Production.Product.ProductID
ORDER BY Production.Product.ListPrice




































--CASE 
--WHEN Production.Product.ListPrice >= 2500 THEN 'Expensive' 
--WHEN Production.Product.ListPrice BETWEEN 500 AND 2499 THEN 'ModeratePrice' 
--WHEN Production.Product.ListPrice BETWEEN 1 AND 499 THEN 'Inexpensive' 
--ELSE 'Too Expensive' 
--END AS 'Can I afford',
