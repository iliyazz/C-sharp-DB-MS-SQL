--Additional Exercises
--1.Number of Users for Email Provider
  SELECT [ep].[Email Provider]
       , COUNT(*) AS [Number Of Users]
    FROM
         (
          SELECT STUFF([u].[Email], 1, CHARINDEX('@', [u].[Email]), '') AS [Email Provider]
            FROM [Users] AS [u]
         )    AS [ep]
GROUP BY [ep].[Email Provider]
ORDER BY [Number Of Users] DESC, [ep].[Email Provider] ASC 
