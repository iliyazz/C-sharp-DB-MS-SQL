--11. Client with Cigars
CREATE FUNCTION udf_ClientWithCigars(@name VARCHAR(50))
RETURNS INT
AS
BEGIN
	RETURN(
	SELECT COUNT(*)
	  FROM Clients AS c
	  JOIN ClientsCigars AS cc ON c.Id = cc.ClientId
	  JOIN Cigars AS cig ON cc.CigarId = cig.Id
	 WHERE c.FirstName = @name)
END
GO

SELECT dbo.udf_ClientWithCigars('Betty')
GO