--16-Exercise Functions and Procedures
--04. Employees from Town
CREATE PROC usp_GetEmployeesFromTown(@TownName NVARCHAR(50))
AS
SELECT e.FirstName
, e.LastName
FROM Employees AS e
JOIN Addresses AS a ON e.AddressID = a.AddressID
JOIN Towns AS t ON a.TownID = t.TownID
WHERE t.[Name] = @TownName
GO

EXEC usp_GetEmployeesFromTown 'Sofia'
GO





