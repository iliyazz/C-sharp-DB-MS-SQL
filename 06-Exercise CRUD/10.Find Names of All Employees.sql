--06.Exercise CRUD
--10.Find Names of All Employees
--Part I – Queries for SoftUni Database
SELECT 
	e.FirstName + ' ' + ISNULL(e.MiddleName + ' ','') + e.LastName AS [Full Name]
FROM Employees AS e
WHERE e.Salary IN (25000, 14000, 12500, 23600)
