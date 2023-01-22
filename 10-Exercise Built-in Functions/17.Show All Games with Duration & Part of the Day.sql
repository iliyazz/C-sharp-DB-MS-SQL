--10-Exercise Built-in Functions
--17.Show All Games with Duration & Part of the Day
--first decision
  SELECT
         [Name] AS Game
       , (CASE
               WHEN DATEPART(HOUR, [Start]) >=0 AND DATEPART(HOUR, [Start]) <12 THEN 'Morning'
               WHEN DATEPART(HOUR, [Start]) >=12 AND DATEPART(HOUR, [Start]) <18 THEN 'Afternoon'
               ELSE 'Evening'
           END ) AS [Part of the Day]
       , (CASE
               WHEN Duration <= 3 THEN 'Extra Short'
               WHEN Duration >= 4 AND Duration <=6 THEN 'Short'
               WHEN Duration > 6 THEN 'Long'
               ELSE 'Extra Long'
           END ) AS [Duration]
    FROM Games
ORDER BY [NAME], Duration, [Part of the Day]

--second decision
  SELECT
         [Name] AS Game
       , (CASE
               WHEN DATEPART(HOUR, [Start]) BETWEEN 0 AND 11 THEN 'Morning'
               WHEN DATEPART(HOUR, [Start]) BETWEEN 12 AND 17 THEN 'Afternoon'
               ELSE 'Evening'
           END ) AS [Part of the Day]
       , (CASE
               WHEN Duration BETWEEN 0 AND 3 THEN 'Extra Short'
               WHEN Duration BETWEEN 4 AND 6 THEN 'Short'
               WHEN Duration > 6 THEN 'Long'
               ELSE 'Extra Long'
           END ) AS [Duration]
    FROM Games
ORDER BY [NAME], Duration, [Part of the Day]

