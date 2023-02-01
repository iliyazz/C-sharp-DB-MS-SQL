--16-Exercise Functions and Procedures
--05. Salary Level Function
CREATE FUNCTION ufn_GetSalaryLevel(@salary DECIMAL(18,4))
RETURNS NVARCHAR(7)
AS
BEGIN
	DECLARE @LevelOfSalary NVARCHAR(7)
	IF @salary < 30000
		SET @LevelOfSalary = 'Low'
	ELSE IF @salary <= 50000
		SET @LevelOfSalary = 'Average'
	ELSE
		SET @LevelOfSalary = 'High'
	RETURN @LevelOfSalary
END
GO

SELECT e.Salary
, dbo.ufn_GetSalaryLevel(e.Salary) AS [Salary Level]
FROM Employees AS e
GO







