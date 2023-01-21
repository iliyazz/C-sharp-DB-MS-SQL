--10-Exercise Built-in Functions
--13. Mix of Peak and River Names
--first decision
  SELECT p.PeakName
       , r.RiverName
       , CONCAT(LOWER(p.PeakName), LOWER(STUFF(r.RiverName, 1, 1, ''))) AS [Mix]
    FROM Peaks AS p, Rivers AS r
   WHERE RIGHT(p.PeakName, 1) = LEFT(r.RiverName, 1)
ORDER BY Mix

--second decision
  SELECT
         p.PeakName
       , r.RiverName
       , CONCAT(LOWER(p.PeakName), LOWER(STUFF(r.RiverName, 1, 1, ''))) AS [Mix]
    FROM [Peaks] AS p
         JOIN [Rivers] AS r
      ON RIGHT(p.PeakName, 1) = LEFT(r.RiverName, 1)
ORDER BY [Mix]