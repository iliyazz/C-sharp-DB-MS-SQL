--05. Products By Price
  SELECT p.[Name],
         p.Price,
         p.[Description]
    FROM Products AS p
ORDER BY p.Price DESC, p.[Name] ASC
