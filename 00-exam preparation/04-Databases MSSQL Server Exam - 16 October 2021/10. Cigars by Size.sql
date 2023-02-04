--10. Cigars by Size
--expected from Judge
  SELECT c.LastName
       , AVG(s.[Length]) AS CigarLength
       , CEILING(AVG(s.RingRange)) AS CigarRingRange
    FROM Clients AS c
    JOIN ClientsCigars AS cc ON cc.ClientId = c.Id
    JOIN Cigars AS cig ON cc.CigarId = cig.Id
    JOIN Sizes AS s ON cig.SizeId = s.Id
GROUP BY c.LastName
ORDER BY CigarLength DESC
--correct query
  SELECT c.LastName
       , AVG(s.[Length]) AS CigarLength
       , CEILING(AVG(s.RingRange)) AS CigarRingRange
    FROM Clients AS c
    JOIN ClientsCigars AS cc ON cc.ClientId = c.Id
    JOIN Cigars AS cig ON cc.CigarId = cig.Id
    JOIN Sizes AS s ON cig.SizeId = s.Id
GROUP BY c.Id, c.LastName
ORDER BY CigarLength DESC

