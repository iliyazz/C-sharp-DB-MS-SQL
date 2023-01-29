--11. Find all Destinations by Email Address
GO
CREATE FUNCTION udf_FlightDestinationsByEmail(@email VARCHAR(50))
RETURNS INT
AS
BEGIN
DECLARE @FlightCount int = (
       SELECT COUNT(f.AirportId)
       FROM Passengers AS p
	   JOIN FlightDestinations AS f ON p.Id = f.PassengerId
       GROUP BY p.Email
       HAVING p.Email = @email
       )
RETURN 	ISNULL(@FlightCount, 0)
END
GO
--SELECT dbo.udf_FlightDestinationsByEmail('MerisShale@gmail.com')
--SELECT dbo.udf_FlightDestinationsByEmail('Montacute@gmail.com')
--SELECT dbo.udf_FlightDestinationsByEmail ('PierretteDunmuir@gmail.com')
--GO

