use AdventureWorks2014

--- select colums from a table
SELECT 
	Name, ProductNumber, Color
FROM Production.Product  

--- using colums alias
SELECT 
	Name as ProductName
FROM Production.Product

----
SELECT 
	Name as [Denumire produs]
FROM Production.Product


-----using top clause for select

SELECT 
	TOP 10 Name, ProductNumber, ModifiedDate
FROM 
	Production.Product


----table alias
SELECT 
	* 
FROM Production.Product p 

-----using operators/expresision functions for select
SELECT
	c.FirstName +  ' ' + c.LastName as FullName,
	MiddleName, FirstName, LastName
FROM Person.Person c

-------functions
-----https://msdn.microsoft.com/en-us/library/ms177516.aspx



----numeric functions



------string functions
------https://msdn.microsoft.com/en-us/library/ms181984.aspx


------matematichal functions
------https://msdn.microsoft.com/en-us/library/ms177516.aspx

SELECT FLOOR(123.45), FLOOR(-123.45), FLOOR($123.45);  


-------case
-----https://msdn.microsoft.com/en-us/library/ms181765.aspx
SELECT   ProductNumber, Category =  
      CASE ProductLine  
         WHEN 'R' THEN 'Road'  
         WHEN 'M' THEN 'Mountain'  
         WHEN 'T' THEN 'Touring'  
         WHEN 'S' THEN 'Other sale items'  
         ELSE 'Not for sale'  
      END,  
   Name  
FROM Production.Product;  

 --------

SELECT   ProductNumber, Name, "Price Range" =   
      CASE   
         WHEN ListPrice =  0 THEN 'Mfg item - not for resale'  
         WHEN ListPrice < 50 THEN 'Under $50'  
         WHEN ListPrice >= 50 and ListPrice < 250 THEN 'Under $250'  
         WHEN ListPrice >= 250 and ListPrice < 1000 THEN 'Under $1000'  
         ELSE 'Over $1000'  
      END  
FROM Production.Product; 