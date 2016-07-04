-- The basic syntax for reading data from a single table
SELECT ProductID, ProductName, Price, ProductDescription
    FROM dbo.Products


-- Returns all columns in the table
-- Does not use the optional schema, dbo
SELECT * FROM Products



-- Returns only two of the columns from the table
SELECT ProductName, Price
FROM dbo.Products



----TOP 
select top 10 
from products


---top (10)
----with ties
-------
SELECT  *
FROM     MyTable 
ORDER BY OrderingColumn ASC 
OFFSET  50 ROWS 
FETCH NEXT 25 ROWS ONLY 


-----https://msdn.microsoft.com/en-us/library/ms365310(v=sql.120).aspx

