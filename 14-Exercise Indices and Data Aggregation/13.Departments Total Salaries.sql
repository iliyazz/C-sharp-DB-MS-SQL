--14-Exercise Indices and Data Aggregation
--13.Departments Total Salaries
  SELECT [e].[DepartmentID]
       , SUM([e].[Salary])
    FROM [Employees] AS [e]
GROUP BY [e].[DepartmentID]
ORDER BY [e].[DepartmentID] ASC
