--04. Delete
DELETE FROM CreatorsBoardgames
WHERE BoardgameId IN (
						SELECT cb.BoardgameId
						FROM Addresses AS a
						JOIN Publishers AS p ON a.Id = p.AddressId
						JOIN Boardgames AS b ON p.Id = b.PublisherId
						JOIN CreatorsBoardgames AS cb ON b.Id = cb.BoardgameId
						WHERE a.Town LIKE ('L%')
					)

DELETE FROM Boardgames
WHERE PublisherId IN(
					SELECT p.Id
                   FROM Addresses AS a
				   JOIN Publishers AS p ON a.Id = p.AddressId
                   WHERE a.Town LIKE ('L%')
					)


DELETE FROM Publishers
WHERE AddressId IN (
                   SELECT Id
                   FROM Addresses AS a
                   WHERE a.Town LIKE ('L%')
				   )

DELETE FROM Addresses
WHERE Town LIKE ('L%')
