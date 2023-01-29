--09. Regular Passengers
  SELECT p.FullName
       , COUNT(f.AircraftId) AS CountOfAircraft
       , SUM(f.TicketPrice) AS TotalPayed
    FROM Passengers AS p
    JOIN FlightDestinations AS f ON p.Id = f.PassengerId
GROUP BY p.FullName
  HAVING COUNT(f.AircraftId) >= 2 AND SUBSTRING(p.FullName, 2, 1) = 'a'
ORDER BY p.FullName


