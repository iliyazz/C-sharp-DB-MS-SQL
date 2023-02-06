--17-Triggers and Transactions
--09. Delete Employees
CREATE TABLE Deleted_Employees(
EmployeeId INT PRIMARY KEY IDENTITY,
FirstName VARCHAR(50),
LastName VARCHAR(50),
MiddleName VARCHAR(50),
JobTitle VARCHAR(50),
DepartmentId INT,
Salary MONEY
)
GO

CREATE /*OR ALTER*/ TRIGGER tr_SetIsDeletedOnDelete
ON Employees FOR DELETE
AS
	INSERT INTO Deleted_Employees
	     SELECT d.FirstName
	          , d.LastName
	          , d.MiddleName
	          , d.JobTitle
	          , d.DepartmentID
	          , d.Salary
	       FROM deleted AS d
GO
DELETE FROM Employees
WHERE EmployeeID = 293
GO

