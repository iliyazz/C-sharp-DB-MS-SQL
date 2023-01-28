--14-Exercise Indices and Data Aggregation
--16.Employees Maximum Salaries
  SELECT [e].[DepartmentID]
       , MAX([e].[Salary])
    FROM [Employees] AS [e]
GROUP BY [e].DepartmentID
  HAVING MAX([e].[Salary]) NOT BETWEEN  30000 AND 70000
