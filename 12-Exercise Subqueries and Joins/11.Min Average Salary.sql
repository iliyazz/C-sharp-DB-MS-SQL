--12-Exercise Subqueries and Joins
--11.Min Average Salary
-- first decision
SELECT TOP 1
           AVG(e.Salary) AS MinAverageSalary
      FROM Employees AS e
  GROUP BY DepartmentID
  ORDER BY MinAverageSalary
  
--second decision
SELECT 
  MIN(a.AverageSalary) AS MinAverageSalary
  FROM 
  (
     SELECT e.DepartmentID, 
            AVG(e.Salary) AS AverageSalary
       FROM Employees AS e
   GROUP BY e.DepartmentID) AS a

--third decision
SELECT
	MIN(dt.AverageSalary) AS MinAverageSalary
FROM
	(SELECT
	        AVG(Salary) AS AverageSalary
	   FROM Employees
   GROUP BY DepartmentID) AS dt

--fourth decision
SELECT TOP 1
	dt.AverageSalary AS MinAverageSalary
FROM
	(SELECT
	        AVG(Salary) AS AverageSalary
	   FROM Employees
   GROUP BY DepartmentID) AS dt
ORDER BY MinAverageSalary ASC