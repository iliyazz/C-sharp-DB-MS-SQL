--Additional Exercises
--02.All Users in Games
  SELECT [g].[Name] AS [Game]
       , [gt].[Name] AS [Game Type]
       , [u].[Username]
       , [ug].[Level]
       , [ug].[Cash]
       , [c].[Name] AS [Character]
    FROM [Users] AS [u]
    JOIN [UsersGames] AS [ug] ON [u].[Id] = [ug].[UserId]
    JOIN [Games] AS [g] ON [ug].[GameId] = [g].[Id]
    JOIN [GameTypes] AS [gt] ON [g].[GameTypeId] = [gt].[Id]
    JOIN [Characters] AS [c] ON [ug].CharacterId = [c].[Id]
ORDER BY [ug].[Level] DESC, [u].[Username] ASC, [g].[Name] ASC
