--06.Exercise CRUD
--16.Create View Employees with Salaries
--Part I – Queries for SoftUni Database.

CREATE VIEW V_EmployeesSalaries
AS
SELECT e.FirstName
,e.LastName
,e.Salary
FROM Employees AS e

--SELECT * FROM V_EmployeesSalaries
