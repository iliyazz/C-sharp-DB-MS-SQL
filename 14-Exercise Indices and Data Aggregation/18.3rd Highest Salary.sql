--14-Exercise Indices and Data Aggregation
--18.*3rd Highest Salary
  SELECT [ranking].[DepartmentID]
       , [ranking].[Salary] AS [ThirdHighestSalary]
   FROM(
         SELECT [e].[DepartmentID]
              , DENSE_RANK() OVER (PARTITION BY [e].[DepartmentID]ORDER BY   [e].[Salary] DESC) AS [dsrank]
              , [e].[Salary]
           FROM [Employees] AS [e]) AS [ranking]
          WHERE [dsrank] = 3
GROUP BY [ranking].DepartmentID, [ranking].[Salary]	  		  
