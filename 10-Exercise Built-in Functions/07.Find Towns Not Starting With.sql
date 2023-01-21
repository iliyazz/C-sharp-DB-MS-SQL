--10-Exercise Built-in Functions
--07.Find Towns Not Starting With
  SELECT t.TownID
       , t.[Name]
    FROM Towns AS t
   WHERE t.[Name] NOT LIKE '[RBD]%'
ORDER BY t.[Name] ASC
