--14-Exercise Indices and Data Aggregation
--02.Longest Magic Wand
SELECT
       MAX([w].[MagicWandSize])
    AS [LongestMagicWand]
  FROM [WizzardDeposits]
    AS [w]
----------------------------
SELECT TOP (1)
           [w].[MagicWandSize]
        AS [LongestMagicWand]
      FROM [WizzardDeposits]
        AS [w]
  GROUP BY [w].[MagicWandSize]
  ORDER BY [w].[MagicWandSize] DESC
