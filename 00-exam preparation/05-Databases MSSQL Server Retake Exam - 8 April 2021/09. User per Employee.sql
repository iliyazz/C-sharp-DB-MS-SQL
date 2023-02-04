--09. User per Employee
   SELECT CONCAT_WS(' ', e.FirstName, e.LastName) AS FullName
        , COUNT( DISTINCT r.UserId) AS UsersCount
     FROM Employees AS e
LEFT JOIN Reports AS r ON e.Id = r.EmployeeId
 GROUP BY CONCAT_WS(' ', e.FirstName, e.LastName)
 ORDER BY UsersCount DESC,  FullName ASC

