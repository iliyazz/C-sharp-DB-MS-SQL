--10-Exercise Built-in Functions
--06.Find Towns Starting With
--first decision
  SELECT t.TownID
       , t.[Name]
    FROM Towns AS t
   WHERE t.[Name] LIKE '[MKBE]%'
ORDER BY t.[Name] ASC

--second decision
  SELECT t.TownID
       , t.[Name]
    FROM Towns AS t
   WHERE t.[Name] LIKE 'M%'
      OR t.[Name] LIKE 'K%'
      OR t.[Name] LIKE 'B%'
      OR t.[Name] LIKE 'E%'
ORDER BY t.[Name] ASC


