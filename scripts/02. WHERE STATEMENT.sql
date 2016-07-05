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
