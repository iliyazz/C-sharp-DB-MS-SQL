--06.Exercise CRUD
--15.Sort Employees Table
--Part I – Queries for SoftUni Database
  SELECT *
    FROM Employees AS e
ORDER BY e.Salary DESC,
         e.FirstName ASC,
         e.LastName DESC,
         e.MiddleName ASC
