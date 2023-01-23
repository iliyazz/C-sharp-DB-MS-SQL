--12-Exercise Subqueries and Joins
--09.Employee Manager
     SELECT
            e.EmployeeID
          , e.FirstName
          , em.EmployeeID AS ManagerID
          , em.FirstName AS ManagerName
       FROM Employees AS e
 INNER JOIN Employees AS em ON e.ManagerID = em.EmployeeID
      WHERE e.ManagerID IN(3, 7)
	  --WHERE em.EmployeeID  IN(3, 7)
   ORDER BY e.EmployeeID ASC