--06.Exercise CRUD
--13.Find 5 Best Paid Employees
--Part I – Queries for SoftUni Database
  SELECT TOP(5)
	     e.FirstName
	     ,e.LastName
    FROM Employees AS e
ORDER BY e.Salary DESC
