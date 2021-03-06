
--Creating a simple database with default settings and configurations based on Model database

Use Master
Go

CREATE DATABASE [ProductsTest]

--Scripting out a simple database with default settings and configurations

Use Master
Go

CREATE DATABASE [Products]
ON  PRIMARY 
( NAME = N'Products', 
FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\Products.mdf' , 
SIZE = 10096KB , 
FILEGROWTH = 1024KB )

LOG ON 
( NAME = N'Products_log', 
FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\Products_log.ldf' , 
SIZE = 1024KB , 
FILEGROWTH = 10%)
GO


--Clean up

DROP DATABASE [ProductsTest]
DROP DATABASE [Products]

