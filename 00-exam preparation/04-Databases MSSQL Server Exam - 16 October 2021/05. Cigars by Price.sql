--05. Cigars by Price
  SELECT c.CigarName
       , c.PriceForSingleCigar
       , c.ImageURL
    FROM Cigars AS c
ORDER BY c.PriceForSingleCigar ASC, c.CigarName DESC









