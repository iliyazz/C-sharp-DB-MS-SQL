--12. Assign Employee
CREATE /*OR ALTER*/ PROCEDURE usp_AssignEmployeeToReport(@EmployeeId INT, @ReportId INT)
AS
BEGIN TRANSACTION
	DECLARE @EmployeeDepartmetId INT = (SELECT DepartmentId
										FROM Employees AS e
										WHERE e.Id = @EmployeeId)
	DECLARE @ReportDepartmetId INT = (SELECT c.DepartmentId
										FROM Reports AS r
										JOIN Categories AS c ON r.CategoryId = c.Id
										WHERE r.Id = @ReportId)
	IF(@EmployeeDepartmetId = @ReportDepartmetId)
		BEGIN
			UPDATE Reports
			SET EmployeeId = @EmployeeId
			WHERE Id = @ReportId
			COMMIT
		END
	ELSE
		BEGIN
			ROLLBACK;
			THROW 51000, 'Employee doesn''t belong to the appropriate department!', 1;
			--RAISERROR('Employee doesn''t belong to the appropriate department!', 0, 1)
			RETURN
		END

GO

EXEC usp_AssignEmployeeToReport 30, 1
/*Employee doesn't belong to the appropriate department!*/
EXEC usp_AssignEmployeeToReport 17, 2
/*(1 row affected)*/




