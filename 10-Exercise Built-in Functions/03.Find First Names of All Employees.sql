--10-Exercise Built-in Functions
--03.Find First Names of All Employees
SELECT
       e.FirstName
  FROM Employees AS e
 WHERE e.DepartmentID = 3 OR e.DepartmentID = 10
	   AND  YEAR(e.HireDate) BETWEEN 1995 AND 2005
 
