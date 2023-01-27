--14-Exercise Indices and Data Aggregation
--06.Deposits Sum for Ollivander Family  
  SELECT
         [w].[DepositGroup]
       , SUM([w].[DepositAmount]) AS [TotalSum]
    FROM [WizzardDeposits] AS [w]
GROUP BY [w].[DepositGroup], [w].[MagicWandCreator]
  HAVING [w].[MagicWandCreator] = 'Ollivander family'
