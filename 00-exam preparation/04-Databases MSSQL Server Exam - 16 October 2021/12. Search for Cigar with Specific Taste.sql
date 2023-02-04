--12. Search for Cigar with Specific Taste
CREATE PROCEDURE usp_SearchByTaste(@taste VARCHAR(50))
AS
BEGIN
	  SELECT c.CigarName
	       , CONCAT('$', c.PriceForSingleCigar) AS Price
	       , t.TasteType
	       , b.BrandName
	       , CONCAT(s.[Length], ' cm') AS CigarLength
	       , CONCAT(s.RingRange, ' cm') AS CigarRingRange
	    FROM Tastes AS t
	    JOIN Cigars AS c ON t.Id = c.TastId
	    JOIN Brands AS b ON c.BrandId = b.Id
	    JOIN Sizes AS s ON c.SizeId = s.Id
	   WHERE t.TasteType = @taste
	ORDER BY CigarLength ASC, CigarRingRange DESC
END
GO

EXEC usp_SearchByTaste 'Woody'
GO


