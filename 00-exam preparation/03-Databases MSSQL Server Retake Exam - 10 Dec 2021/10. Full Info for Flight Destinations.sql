--10. Full Info for Flight Destinations
  SELECT a.AirportName
       , f.[Start] AS DayTime
       , f.TicketPrice
       , p.FullName
       , ai.Manufacturer
       , ai.Model
    FROM FlightDestinations AS f
    JOIN Airports AS a ON f.AirportId = a.Id
    JOIN Passengers AS p ON f.PassengerId = p.Id
    JOIN Aircraft AS ai ON f.AircraftId = ai.Id
   WHERE CAST( f.[Start] AS TIME) BETWEEN '06:00' AND '20:00'  AND
         f.TicketPrice > 2500
ORDER BY ai.Model ASC


