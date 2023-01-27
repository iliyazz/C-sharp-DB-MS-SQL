--14-Exercise Indices and Data Aggregation
--03.Longest Magic Wand per Deposit Groups
  SELECT
         [w].[DepositGroup]
       , MAX([w].[MagicWandSize]) AS [LongestMagicWand]
    FROM [WizzardDeposits] AS [w]
GROUP BY [w].[DepositGroup]
