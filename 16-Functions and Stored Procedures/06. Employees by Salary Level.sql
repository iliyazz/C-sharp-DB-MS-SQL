--16-Exercise Functions and Procedures
--06. Employees by Salary Level
CREATE PROC usp_EmployeesBySalaryLevel (@LevelOfSalary NVARCHAR(7))
AS
BEGIN
	SELECT e.FirstName
	     , e.LastName
	  FROM Employees AS e
	 WHERE dbo.ufn_GetSalaryLevel(Salary) = @LevelOfSalary
END
GO

EXEC usp_EmployeesBySalaryLevel 'High'
GO

