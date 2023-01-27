--14-Exercise Indices and Data Aggregation
--01.Records’ Count
SELECT
       COUNT(*)
 FROM [WizzardDeposits]
 --------------------------
  ---------------
SELECT TOP (1)
           SUM([w].[Id])
        AS [Count]
      FROM [WizzardDeposits]
        AS [w]
  GROUP BY [Id]
  ORDER BY [Id] DESC

