
--We use the Order By command to sort data in either ascending or descending order
--Ascending is the default order (ASC)
--To sort the data in descending order we use DESC
--Can Use the Order By command with multiple columns

  
  SELECT 
       [Name]
      ,[GroupName]
      ,[ModifiedDate]
  FROM [AdventureWorks2012].[HumanResources].[Department]
 
 --Order by command sorts by default in the ascending order

  SELECT 
       [Name]
      ,[GroupName]
      ,[ModifiedDate]
  FROM [AdventureWorks2012].[HumanResources].[Department]
  Order By Name ASC   --<< default asc (not needed)

 --Order by command sorts by descending order

  SELECT 
       [Name]
      ,[GroupName]
      ,[ModifiedDate]
  FROM [AdventureWorks2012].[HumanResources].[Department]
  Order By Name DESC  


  Create Database TSQL
  Go

  Use TSQL
  go

  --Create a table

  Create Table Names
  (Fname varchar (20),
  Lname varchar (20),
  State char (2),
  City varchar (25),
  Salary money
  )

  --Insert data

Insert into Names Values ('Bob','Smith','CA','Los Angeles',2500)
Insert into Names Values ('Tom','Jones','NY','NewYork',2600)
Insert into Names Values ('Matt','Ranch','GA','Atlanta',3000)
Insert into Names Values ('Sue','Smith','NY','Los Angeles',2514)
Insert into Names Values ('Mary','Stern','CA','Los Angeles',1425)
Insert into Names Values ('Andy','Dent','CA','Los Angeles',1023)
Insert into Names Values ('Andy','Zampella','CA','Los Angeles',1023)
Insert into Names Values ('Andy','Anderson','CA','Los Angeles',1023)


select * from Names

--Order By several columns; order by will sort by the first column, and then, sort within the first column result set

select * from Names
Order by Fname, Lname desc

--drop table names


