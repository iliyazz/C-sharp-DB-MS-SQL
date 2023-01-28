--14-Exercise Indices and Data Aggregation
--11.Average Interest
  SELECT [w].[DepositGroup]
       , [w].[IsDepositExpired]
       , AVG([w].[DepositInterest]) AS [AverageInterest]
    FROM [WizzardDeposits] AS [w]
   WHERE [w].[DepositStartDate] > '01-01-1985'
GROUP BY [w].[DepositGroup], [w].[IsDepositExpired]
ORDER BY [w].[DepositGroup] DESC, [w].[IsDepositExpired] ASC
