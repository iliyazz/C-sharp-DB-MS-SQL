--14-Exercise Indices and Data Aggregation
--17.Employees Count Salaries
--first decision
SELECT COUNT(*) AS [Count]
  FROM [Employees] AS e
 WHERE [e].[ManagerID] IS NULL
--second decision
  SELECT COUNT(*) AS [Count]
    FROM [Employees] AS [e]
GROUP BY [e].[ManagerID]
  HAVING [e].[ManagerID] IS NULL
