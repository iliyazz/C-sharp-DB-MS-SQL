--08. Birthday Report 
  SELECT u.Username
       , c.[Name] AS CategoryName
    FROM Users AS u
    JOIN Reports AS r ON u.Id = r.UserId
    JOIN Categories AS c ON r.CategoryId = c.Id
   WHERE DATEPART(MONTH, u.Birthdate) = DATEPART(MONTH, r.OpenDate) AND
         DATEPART(DAY, u.Birthdate) = DATEPART(DAY, r.OpenDate)
ORDER BY u.Username ASC, CategoryName ASC
