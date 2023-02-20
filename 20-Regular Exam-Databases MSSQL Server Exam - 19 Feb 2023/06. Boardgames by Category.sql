--06. Boardgames by Category
  SELECT b.Id,
         b.[Name],
         b.YearPublished,
         c.[Name]
    FROM Boardgames AS b
    JOIN Categories AS c ON b.CategoryId = c.Id
   WHERE c.[Name] IN ('Strategy Games', 'Wargames')
ORDER BY b.YearPublished DESC
