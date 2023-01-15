--06.Exercise CRUD
--14.Find All Employees Except Marketing
--Part I – Queries for SoftUni Database
SELECT
       e.FirstName
      ,e.LastName
 FROM Employees AS E
WHERE e.DepartmentID <> 4

