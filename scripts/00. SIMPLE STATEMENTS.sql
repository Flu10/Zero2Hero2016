---open a database
USE AdventureWorks2014

---VARIABLES
---declare a variable
DECLARE @currentDate DATETIME = GETDATE(),
		@name NVARCHAR(max)

----display variable value
SELECT @currentDate = GETDATE() - 1

SELECT 
	@currentDate

SET @currentDate = @currentDate - 10

SELECT 
	@currentDate


----system constants
SELECT @@VERSION


-----table variables/parameters
DECLARE @tbl TABLE (Id int primary key identity(1,1), Nume nvarchar(max))

SELECT * FROM @tbl