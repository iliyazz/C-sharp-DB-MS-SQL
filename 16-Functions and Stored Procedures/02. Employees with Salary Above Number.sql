--16-Exercise Functions and Procedures
--02. Employees with Salary Above Number
CREATE PROC usp_GetEmployeesSalaryAboveNumber (@SalaryAboveNumber DECIMAL(18, 4))
AS
SELECT e.FirstName
     , e.LastName
  FROM Employees AS e
 WHERE e.Salary >= @SalaryAboveNumber
GO

EXEC usp_GetEmployeesSalaryAboveNumber 48100 
GO





