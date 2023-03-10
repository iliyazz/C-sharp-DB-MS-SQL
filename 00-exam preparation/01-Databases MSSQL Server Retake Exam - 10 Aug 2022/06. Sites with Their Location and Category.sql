--06. Sites with Their Location and Category
  SELECT s.[Name] AS [Site]
       , l.[Name] AS [Location]
       , s.Establishment
       , c.[Name] AS Category
    FROM Sites AS s
    JOIN Locations AS l ON s.LocationId = l.Id
    JOIN Categories AS c ON s.CategoryId = c.Id
ORDER BY Category DESC, [Location] ASC, [Site] ASC



