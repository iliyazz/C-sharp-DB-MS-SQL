--12. Full Info for Airports
CREATE /*OR ALTER*/ PROCEDURE usp_SearchByAirportName(@airportName VARCHAR(70))
AS
BEGIN
	SELECT a.AirportName
	, p.FullName
	, CASE
		WHEN fd.TicketPrice <= 400 THEN 'Low'
		WHEN fd.TicketPrice <= 1500 THEN 'Medium'
		ELSE 'High'
	  END AS LevelOfTickerPrice
	, ac.Manufacturer
	, ac.Condition
	, ait.TypeName
	FROM Passengers AS p
	JOIN FlightDestinations AS fd ON p.Id = fd.PassengerId
	JOIN Airports AS a ON fd.AirportId = a.Id
	JOIN Aircraft AS ac ON fd.AircraftId = ac.Id 
	JOIN AircraftTypes AS ait ON ac.TypeId = ait.Id
	WHERE a.AirportName = @airportName
	ORDER BY ac.Manufacturer, p.FullName
END
GO

EXEC usp_SearchByAirportName 'Sir Seretse Khama International Airport'
GO
