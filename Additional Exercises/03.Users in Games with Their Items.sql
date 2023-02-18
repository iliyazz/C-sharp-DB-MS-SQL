--Additional Exercises
--03.Users in Games with Their Items
   SELECT [u].[Username]
        , [g].[Name] AS [Game]
        , COUNT([i].[Name]) AS [Items Count]
        , SUM([i].[Price]) AS [Items Price]
     FROM [Users] AS [u]
LEFT JOIN [UsersGames] AS [ug] ON [u].[Id] = [ug].[UserId]
LEFT JOIN [Games] AS [g] ON [ug].[GameId] = [g].[Id]
LEFT JOIN [UserGameItems] AS [ugi] ON [ug].[Id] = [ugi].[UserGameId]
LEFT JOIN [Items] AS [i] ON [ugi].[ItemId] = [i].[Id]
 GROUP BY [u].[Username], [g].[Name]
   HAVING COUNT([i].[Name]) >= 10
 ORDER BY [Items Count] DESC, [Items Price] DESC, [u].[Username] ASC
