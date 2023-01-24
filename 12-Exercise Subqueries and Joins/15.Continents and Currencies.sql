--12-Exercise Subqueries and Joins
--15.Continents and Currencies
SELECT
       rc.ContinentCode
     , rc.CurrencyCode
     , rc.[Count] AS CurrencyUsage
  FROM (
         SELECT
                c.ContinentCode
              , c.CurrencyCode
              , COUNT(c.CurrencyCode) AS [Count]
              , RANK() OVER (PARTITION BY c.ContinentCode ORDER BY COUNT(c.CurrencyCode) DESC) AS [Rank]
           FROM Countries AS c
          GROUP BY c.ContinentCode, c.CurrencyCode
          ) AS rc
 WHERE [Rank] = 1 AND rc.[Count] > 1
