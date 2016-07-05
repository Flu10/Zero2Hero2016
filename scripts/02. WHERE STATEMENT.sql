----where with simple predicate 
----only one value

SELECT FirstName, LastName, MiddleName
FROM Person.Person 
WHERE BusinessEntityID = 1

---select multiple values
SELECT p.ProductNumber, Name
FROM Production.Product P
WHERE P.ProductSubcategoryID = 1


-----use other operator >= for datetime


SELECT P.ProductNumber, P.Name, P.ModifiedDate
FROM Production.Product P
WHERE P.ModifiedDate > '2004.03.11' ----GETDATE


-----using between
SELECT *
FROM HumanResources.EmployeePayHistory
WHERE RateChangeDate BETWEEN '20011212' AND '20020105';

-----string predicate
SELECT ProductID, Name, Color  
FROM Production.Product  
WHERE Name LIKE ('%Frame%'); 

----multiple string predicates ---or predicates
SELECT ProductID, Name  
FROM Production.Product  
WHERE ProductID = 2  
OR ProductID = 4   
OR Name = 'Spokes' ;  
GO  

------multiple string predicate ---and predicates
SELECT ProductID, Name, Color  
FROM Production.Product  
WHERE Name LIKE ('%Frame%')  
AND Name LIKE ('HL%')  
AND Color = 'Red' ;  


------TODO - combine and si or conditions



-----select from list of values
SELECT ProductID, Name, Color  
FROM Production.Product  
WHERE Name IN ('Blade', 'Crown Race', 'Spokes');  
GO  


----TODO -select from a list of values from another tables

SELECT ProductID, Name, Color 
from Production.product p where p.ProductSubcategoryID IN (

select ps.ProductSubcategoryID from Production.ProductSubcategory ps where ps.ProductCategoryID = 1)