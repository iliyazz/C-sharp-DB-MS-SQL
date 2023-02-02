--16-Exercise Functions and Procedures
--08. Delete Employees and Departments
CREATE /*OR ALTER */PROC usp_DeleteEmployeesFromDepartment @departmentId INT
AS
BEGIN
	DECLARE @employeesToDelete TABLE (Id INT)
	INSERT INTO @employeesToDelete
	     SELECT EmployeeID
	       FROM Employees
	      WHERE DepartmentID = @departmentId
	
	DELETE FROM EmployeesProjects
	WHERE EmployeeID IN (SELECT Id  FROM @employeesToDelete)

	ALTER TABLE Departments
	ALTER COLUMN ManagerId INT

	UPDATE Departments
	SET ManagerID = NULL
	WHERE ManagerID IN (SELECT Id  FROM @employeesToDelete)

	UPDATE Employees
	SET ManagerID = NULL
	WHERE ManagerID IN (SELECT Id  FROM @employeesToDelete)

	DELETE
	FROM Employees
	WHERE DepartmentID = @departmentId

	DELETE
	FROM Departments
	WHERE DepartmentID = @departmentId

	SELECT COUNT(*)
	FROM Employees
	WHERE DepartmentID = @departmentId
END
GO

EXEC dbo.usp_DeleteEmployeesFromDepartment 7
GO
