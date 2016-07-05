
-------Specifying a single column defined in the select list
SELECT ProductID, Name FROM Production.Product
WHERE Name LIKE 'Lock Washer%'
ORDER BY ProductID;

----Specifying a column that is not defined in the select list
SELECT ProductID, Name, Color
FROM Production.Product
ORDER BY ListPrice;



-----Specifying an expression as the sort column
SELECT 
	HireDate, e.BusinessEntityID
FROM HumanResources.Employee e
ORDER BY DATEPART(year, HireDate);


---Specifying a conditional order
SELECT e.BusinessEntityID, SalariedFlag
FROM HumanResources.Employee e
ORDER BY CASE SalariedFlag WHEN 1 THEN e.BusinessEntityID END DESC
        ,CASE WHEN SalariedFlag = 0 THEN e.BusinessEntityID END;