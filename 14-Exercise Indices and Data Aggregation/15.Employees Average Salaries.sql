--14-Exercise Indices and Data Aggregation
--15.Employees Average Salaries
SELECT *
  INTO [EmployeesNew]
  FROM [Employees]
 WHERE [Salary] > 30000

 DELETE FROM [EmployeesNew]
       WHERE [ManagerID] IN (42)

UPDATE [EmployeesNew]
   SET [Salary] += 5000
 WHERE [DepartmentID] = 1

  SELECT [DepartmentID]
       , AVG([e].Salary) AS [AverageSalary]
    FROM [EmployeesNew] AS [e]
GROUP BY [DepartmentID]
