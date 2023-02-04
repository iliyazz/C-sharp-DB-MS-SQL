--09. Clients with ZIP Codes
  SELECT DISTINCT CONCAT_WS(' ', c.FirstName, c.LastName) AS FullName
       , a.Country
       , a.ZIP
       , CONCAT('$', CAST(sub.CigarPrice AS DECIMAL(18, 2))) AS CigarPrice
    FROM Clients AS c
    JOIN Addresses AS a ON c.AddressId = a.Id
    JOIN ClientsCigars AS cc ON c.Id = cc.ClientId
    JOIN Cigars AS cig ON cc.CigarId = cig.Id
    JOIN (
           SELECT ccs.ClientId
                , MAX(cs.PriceForSingleCigar) AS CigarPrice
             FROM ClientsCigars AS ccs
             JOIN Cigars AS cs ON ccs.CigarId = cs.Id
         GROUP BY ccs.ClientId
         ) AS sub ON sub.ClientId = cc.ClientId
   WHERE a.ZIP NOT LIKE ('%[^0-9]%')
ORDER BY FullName ASC
