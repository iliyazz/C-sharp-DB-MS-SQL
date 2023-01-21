--10-Exercise Built-in Functions
--12.Countries Holding 'A' 3 or More Times
--first decision
  SELECT 
         c.CountryName
       , c.IsoCode
    FROM [Countries] AS c
   WHERE LEN(c.CountryName) - LEN(REPLACE(LOWER(c.CountryName), 'a', '')) >= 3
ORDER BY c.IsoCode

--second decision
  SELECT c.CountryName, c.IsoCode
    FROM Countries AS c
   WHERE LOWER(c.CountryName) LIKE '%a%a%a%'
ORDER BY c.IsoCode