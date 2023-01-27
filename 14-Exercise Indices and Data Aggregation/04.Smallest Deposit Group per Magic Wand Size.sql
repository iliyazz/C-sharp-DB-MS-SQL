--14-Exercise Indices and Data Aggregation
--04.Smallest Deposit Group per Magic Wand Size
SELECT TOP (2)
           [w].[DepositGroup]
      FROM [WizzardDeposits] AS [w]
  GROUP BY [w].[DepositGroup]
  ORDER BY AVG([w].[MagicWandSize])
