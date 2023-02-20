--09. Creators with Emails
  SELECT CONCAT(c.FirstName, ' ', c.LastName) AS FullName,
         c.Email,
         MAX(b.Rating)
    FROM Creators AS c
    JOIN CreatorsBoardgames AS cb ON c.Id = cb.CreatorId
    JOIN Boardgames AS b ON cb.BoardgameId = b.Id
   WHERE RIGHT(c.Email, 4) = '.com'
GROUP BY c.FirstName,
         c.LastName,
         c.Email
ORDER BY FullName ASC
