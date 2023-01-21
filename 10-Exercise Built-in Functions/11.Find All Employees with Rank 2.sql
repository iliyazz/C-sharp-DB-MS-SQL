--10-Exercise Built-in Functions
--11.Find All Employees with Rank 2
  SELECT * 
          FROM(
              SELECT
                     e.EmployeeID
                   , e.FirstName
                   , e.LastName
                   , e.Salary
                   , DENSE_RANK() OVER (PARTITION BY e.Salary ORDER BY e.EmployeeID ASC) AS [Rank]
              FROM Employees AS e
             WHERE e.Salary BETWEEN 10000 AND 50000
             ) AS r
             WHERE r.[Rank] = 2
ORDER BY r.Salary DESC


