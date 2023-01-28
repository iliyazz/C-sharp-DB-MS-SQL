--14-Exercise Indices and Data Aggregation
--14.Employees Minimum Salaries
  SELECT [e].[DepartmentID]
       , MIN([e].[Salary]) AS [MinimumSalary]
    FROM [Employees] AS [e]
GROUP BY [e].[DepartmentID]
  HAVING [e].[DepartmentID] IN (2, 5, 7)
