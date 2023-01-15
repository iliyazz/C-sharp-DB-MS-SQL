--06.Exercise CRUD
--09.Find Names of All Employees by Salary in Range
--Part I – Queries for SoftUni Database
SELECT
	e.FirstName
	,e.LastName
	,e.JobTitle
FROM Employees AS e
--WHERE e.Salary >= 20000 AND e.Salary <= 30000
WHERE e.Salary BETWEEN 20000 AND 30000
