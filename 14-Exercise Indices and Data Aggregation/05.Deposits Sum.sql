--14-Exercise Indices and Data Aggregation
--05.Deposits Sum
  SELECT
         [w].[DepositGroup]
       , SUM([w].[DepositAmount]) AS [TotalSum]
    FROM [WizzardDeposits] AS [w]
GROUP BY [w].[DepositGroup]
 