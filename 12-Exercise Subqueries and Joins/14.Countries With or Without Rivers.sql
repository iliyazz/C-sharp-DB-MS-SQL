--12-Exercise Subqueries and Joins
 --14.Countries With or Without Rivers
SELECT TOP 5
           c.CountryName
         , r.RiverName
      FROM Countries AS c
INNER JOIN Continents AS con ON c.ContinentCode = con.ContinentCode
 LEFT JOIN CountriesRivers AS cr ON c.CountryCode = cr.CountryCode
 LEFT JOIN Rivers AS r ON cr.RiverId = r.Id
     WHERE con.ContinentName = 'Africa'
  ORDER BY c.CountryName
