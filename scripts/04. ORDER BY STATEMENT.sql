
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




------limiting results

-----using top clause for select

SELECT 
	TOP 10 Name, ProductNumber, ModifiedDate
FROM 
	Production.Product

ORDER BY ModifiedDate



-------
-- Return all rows sorted by the column DepartmentID.  
SELECT DepartmentID, Name, GroupName  
FROM HumanResources.Department  
ORDER BY DepartmentID;  
  
-- Skip the first 5 rows from the sorted result set and return all remaining rows.  
SELECT DepartmentID, Name, GroupName  
FROM HumanResources.Department  
ORDER BY DepartmentID OFFSET 5 ROWS;  
  
-- Skip 0 rows and return only the first 10 rows from the sorted result set.  
SELECT DepartmentID, Name, GroupName  
FROM HumanResources.Department  
ORDER BY DepartmentID   
    OFFSET 0 ROWS  
    FETCH NEXT 10 ROWS ONLY;  