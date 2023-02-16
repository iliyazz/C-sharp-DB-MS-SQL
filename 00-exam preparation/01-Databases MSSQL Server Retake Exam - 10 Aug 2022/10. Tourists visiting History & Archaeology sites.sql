--10. Tourists visiting History & Archaeology sites
  SELECT SUBSTRING(t.[Name], CHARINDEX(' ', t.[Name]), LEN(t.[Name]) + 1 - CHARINDEX(' ', t.[Name])) AS LastName,
         t.Nationality,
         t.Age,
         t.PhoneNumber
    FROM Categories AS c
    JOIN Sites AS s ON c.Id = s.CategoryId
    JOIN SitesTourists AS st ON s.Id = st.SiteId
    JOIN Tourists AS t ON st.TouristId = t.Id
   WHERE c.[Name] = 'History and archaeology'
GROUP BY t.[Name], t.Nationality, t.Age, t.PhoneNumber
ORDER BY LastName ASC


