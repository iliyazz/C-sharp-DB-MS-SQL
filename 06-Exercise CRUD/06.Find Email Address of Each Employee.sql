--06.Exercise CRUD
--06.Find Email Address of Each Employee
--Part I – Queries for SoftUni Database
--SELECT e.[FirstName] + '.' + e.[LastName] + '@softuni.bg' AS [Full Email Address]
SELECT CONCAT(e.[FirstName], '.', e.[LastName], '@', 'softuni.bg' )  AS [Full Email Address]
FROM Employees AS e