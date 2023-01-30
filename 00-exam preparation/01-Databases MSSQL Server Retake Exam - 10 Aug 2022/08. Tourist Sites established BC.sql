--08. Tourist Sites established BC
  SELECT s.[Name] AS [Site]
       , l.[Name]
       , l.Municipality
       , l.Province
       , s.Establishment
    FROM Sites AS s
    JOIN Locations AS l ON s.LocationId = l.Id
   WHERE LEFT(l.[Name], 1) NOT IN ('B', 'M', 'D') AND s.Establishment LIKE('%BC%')
ORDER BY [Site] ASC

