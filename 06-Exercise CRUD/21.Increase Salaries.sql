--06.Exercise CRUD
--21.Increase Salaries
--Part I – Queries for SoftUni Database.
-- UPDATE Employees
   -- SET Salary *= 1.12
 -- WHERE DepartmentID IN (1, 2, 4, 11)
-- SELECT e.Salary
  -- FROM Employees AS e
  
  UPDATE Employees
   SET Salary *= 1.12
 WHERE DepartmentID IN 
			(
			SELECT [DepartmentID]
			 FROM [Departments]
			WHERE [Name] IN 
					(
					'Engineering',
					'Tool Design',
					'Marketing' ,
					'Information Services'
					)
			)
SELECT e.Salary
  FROM Employees AS e


