--10-Exercise Built-in Functions
--10.Rank Employees by Salary
    SELECT
           e.EmployeeID
         , e.FirstName
         , e.LastName
         , e.Salary
         , DENSE_RANK() OVER (PARTITION BY e.Salary ORDER BY e.EmployeeID ASC)
    FROM Employees AS e
   WHERE e.Salary BETWEEN 10000 AND 50000
ORDER BY e.Salary DESC