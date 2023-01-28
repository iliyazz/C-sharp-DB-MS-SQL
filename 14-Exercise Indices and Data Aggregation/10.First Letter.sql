--14-Exercise Indices and Data Aggregation
--10.First Letter
--first decision
SELECT DISTINCT LEFT([w].[FirstName], 1) AS [FirstLetter]
  FROM [WizzardDeposits] AS [w]
 WHERE [w].[DepositGroup] = 'Troll Chest'
 --second decision
  SELECT LEFT([w].[FirstName], 1) AS [FirstLetter]
    FROM [WizzardDeposits] AS [w]
   WHERE [w].[DepositGroup] = 'Troll Chest'
GROUP BY LEFT([w].[FirstName], 1)
ORDER BY [FirstLetter]
