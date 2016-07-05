DECLARE @person TABLE (ID INT PRIMARY KEY IDENTITY, Name NVARCHAR(max))
DECLARE @personAddress TABLE (Id INT PRIMARY KEY IDENTITY, [Address] NVARCHAR(max), PersonId INT, RegistrationDate DATETIME GETDATE())


INSERT @person values(N'Person1')
INSERT @person values (N'Person2'), (N'Person3')


INSERT @personAddress values ( N'Prima adresa', 1),('a doua Addresa prima persoan', 1)


SELECT Name, ID
FROM @person

SELECT 
	pa.Id, 
	pa.Address,
	pa.PersonId
FROM @personAddress pa


-------update statement


------ delete
DELETE 
FROM @person WHERE Id = 1

SELECT 
	p.ID,
	p.Name 
FROM @person p
