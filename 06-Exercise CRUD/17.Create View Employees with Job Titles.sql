--06.Exercise CRUD
--17. Create View Employees with Job Titles
--Part I – Queries for SoftUni Database.
CREATE VIEW V_EmployeeNameJobTitle
AS
SELECT 
	e.FirstName + ' ' + ISNULL(e.MiddleName + ' ',' ') + e.LastName AS [Full Name]
	,e.JobTitle
FROM Employees AS e
--SELECT * FROM V_EmployeeNameJobTitle


