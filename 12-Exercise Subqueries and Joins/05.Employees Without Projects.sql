--12-Exercise Subqueries and Joins
--05.Employees Without Projects
--first decision
   SELECT TOP 3
          e.EmployeeID
        , e.FirstName
     FROM Employees AS e
LEFT JOIN EmployeesProjects AS ep ON e.EmployeeID = ep.EmployeeID
WHERE ep.ProjectID IS NULL
    ORDER BY
          e.EmployeeID ASC
		  
--second decision
   SELECT TOP 3
          e.EmployeeID
        , e.FirstName
     FROM Employees AS e
LEFT JOIN EmployeesProjects AS ep ON e.EmployeeID = ep.EmployeeID
    ORDER BY
          ep.ProjectID ASC,
          e.EmployeeID ASC