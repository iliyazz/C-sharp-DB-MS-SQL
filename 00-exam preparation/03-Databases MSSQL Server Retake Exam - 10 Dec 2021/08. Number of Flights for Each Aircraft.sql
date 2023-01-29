--08. Number of Flights for Each Aircraft
  SELECT a.Id AS AircraftId
       , a.Manufacturer
       , a.FlightHours
       , COUNT(f.AirportId) AS FlightDestinationsCount
       , ROUND(AVG(f.TicketPrice), 2) AS AvgPrice
    FROM Aircraft AS a
    JOIN FlightDestinations AS f ON a.Id = f.AircraftId
GROUP BY a.Id, a.Manufacturer, a.FlightHours
  HAVING COUNT(f.AirportId) >= 2
ORDER BY COUNT(f.AirportId) DESC, a.Id ASC

