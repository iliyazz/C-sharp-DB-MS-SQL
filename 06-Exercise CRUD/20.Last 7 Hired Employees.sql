--06.Exercise CRUD
--20.Last 7 Hired Employees
--Part I – Queries for SoftUni Database.
SELECT TOP(7)
e.FirstName
,e.LastName
,e.HireDate
FROM Employees AS e
ORDER BY e.HireDate DESC




