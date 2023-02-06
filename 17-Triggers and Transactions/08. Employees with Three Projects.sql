--17-Triggers and Transactions
--08. Employees with Three Projects
CREATE PROCEDURE usp_AssignProject(@emloyeeId INT, @projectID INT)
AS
BEGIN
	DECLARE @NumberOfProjects INT = (
									SELECT COUNT(ep.EmployeeID)
									FROM EmployeesProjects AS ep
									JOIN Projects AS p ON ep.ProjectID = p.ProjectID
									WHERE ep.EmployeeID = @emloyeeId
									)
	BEGIN TRANSACTION
		INSERT INTO EmployeesProjects
		VALUES
		(@emloyeeId, @projectID)
		IF(@NumberOfProjects >= 3)
			BEGIN
				ROLLBACK
				RAISERROR('The employee has too many projects!', 16, 1)
				RETURN
			END
		ELSE
			BEGIN
				COMMIT
			RETURN
	END
END
