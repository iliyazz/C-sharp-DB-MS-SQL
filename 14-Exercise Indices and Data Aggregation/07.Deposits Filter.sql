--14-Exercise Indices and Data Aggregation
--07.Deposits Filter
--first decision
  SELECT
         [w].[DepositGroup]
       , SUM([w].[DepositAmount]) AS [TotalSum]
    FROM [WizzardDeposits] AS [w]
GROUP BY [w].[DepositGroup], [w].[MagicWandCreator]
  HAVING [w].[MagicWandCreator] = 'Ollivander family' AND SUM([w].[DepositAmount]) < 150000
ORDER BY SUM([w].[DepositAmount]) DESC

--second decision
  SELECT
         [w].[DepositGroup]
       , SUM([w].[DepositAmount]) AS [TotalSum]
    FROM [WizzardDeposits] AS [w]
   WHERE [MagicWandCreator] = 'Ollivander family'
GROUP BY [w].[DepositGroup]
  HAVING SUM([w].[DepositAmount]) < 150000
ORDER BY [TotalSum] DESC
