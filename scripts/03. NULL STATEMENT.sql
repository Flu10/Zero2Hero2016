Use AdventureWorks2014


-------
SELECT 
	c.FirstName,
	c.LastName,
	c.MiddleName
FROM Person.Person c
----
SELECT 
	c.FirstName,
	c.LastName,
	c.MiddleName
FROM Person.Person c
WHERE MiddleName IS NULL
----
SELECT 
	c.FirstName,
	c.LastName,
	c.MiddleName
FROM Person.Person c
WHERE c.MiddleName IS NOT NULL

