USE AdventureWorks2014

SELECT e.BusinessEntityID
FROM HumanResources.Employee AS e
    INNER JOIN Sales.SalesPerson AS s
    ON e.BusinessEntityID = s.BusinessEntityID

-----join values in two columns that are not equa
SELECT 
	DISTINCT 
	p.ProductID, 
	p.Name, 
	p.ListPrice, 
	sd.UnitPrice AS 'Selling Price'
FROM Sales.SalesOrderDetail AS sd
    JOIN Production.Product AS p 
    ON sd.ProductID = p.ProductID AND sd.UnitPrice < p.ListPrice
WHERE p.ProductID = 718


-------
SELECT 
	DISTINCT 
	p1.ProductSubcategoryID, 
	p1.ListPrice
FROM Production.Product p1
    INNER JOIN Production.Product p2
    ON p1.ProductSubcategoryID = p2.ProductSubcategoryID
    AND p1.ListPrice <> p2.ListPrice
WHERE p1.ListPrice < $15 AND p2.ListPrice < $15
ORDER BY ProductSubcategoryID;



----LEFT OUTER JOIN 

SELECT p.Name, pr.ProductReviewID
FROM Production.Product p
LEFT OUTER JOIN Production.ProductReview pr
ON p.ProductID = pr.ProductID

----RIGHT OUTER JOIN 
SELECT st.Name AS Territory, sp.BusinessEntityID, e.FirstName, e.LastName, e.MiddleName
FROM Sales.SalesTerritory st 
RIGHT OUTER JOIN Sales.SalesPerson sp
INNER JOIN Person.Person e on e.BusinessEntityID = sp.BusinessEntityID
ON st.TerritoryID = sp.TerritoryID