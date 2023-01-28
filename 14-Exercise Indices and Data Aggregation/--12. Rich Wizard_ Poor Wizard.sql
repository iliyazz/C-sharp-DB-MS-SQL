--14-Exercise Indices and Data Aggregation
--12. *Rich Wizard, Poor Wizard
--first decision
  SELECT SUM([SumDifference].[Difference])
    FROM
         (SELECT [w].[DepositAmount] - [w+1].[DepositAmount] AS [Difference]
            FROM [WizzardDeposits] AS [w]
            JOIN [WizzardDeposits] AS [w+1] ON [w].[Id] = [w+1].[Id] - 1)
              AS [SumDifference]
--second decision
  SELECT SUM([SumDifference].[Difference])
    FROM
         (SELECT [w].[DepositAmount] - LEAD([w].[DepositAmount], 1, NULL) OVER (ORDER BY [w].[Id]) AS [Difference]
            FROM [WizzardDeposits] AS [w])
              AS [SumDifference]
