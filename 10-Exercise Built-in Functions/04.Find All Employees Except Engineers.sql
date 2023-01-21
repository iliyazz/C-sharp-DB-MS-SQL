--10-Exercise Built-in Functions
--04.Find All Employees Except Engineers
SELECT
       e.FirstName
	 , e.LastName
  FROM Employees AS e
 WHERE e.JobTitle NOT LIKE '%engineer%'
 
