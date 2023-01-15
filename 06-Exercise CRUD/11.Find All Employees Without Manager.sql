--06.Exercise CRUD
--11.Find All Employees Without Manager
--Part I – Queries for SoftUni Database
SELECT	e.FirstName
		,e.LastName
FROM	Employees AS e
WHERE	e.ManagerID IS NULL
