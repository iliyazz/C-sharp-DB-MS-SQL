--06.Exercise CRUD
--12.Find All Employees with Salary More Than
--Part I – Queries for SoftUni Database
  SELECT e.FirstName
		 ,e.LastName
		 ,e.Salary
    FROM Employees AS e
   WHERE e.Salary > 50000
ORDER BY e.Salary DESC
