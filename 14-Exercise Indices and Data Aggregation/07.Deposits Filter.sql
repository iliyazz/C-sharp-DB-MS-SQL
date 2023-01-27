--14-Exercise Indices and Data Aggregation
--07.Deposits Filter
  SELECT
         [w].[DepositGroup]
       , SUM([w].[DepositAmount]) AS [TotalSum]
    FROM [WizzardDeposits] AS [w]
GROUP BY [w].[DepositGroup], [w].[MagicWandCreator]
  HAVING [w].[MagicWandCreator] = 'Ollivander family' AND SUM([w].[DepositAmount]) < 150000
ORDER BY SUM([w].[DepositAmount]) DESC
