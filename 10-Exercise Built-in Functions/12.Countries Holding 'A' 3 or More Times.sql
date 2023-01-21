--10-Exercise Built-in Functions
--12.Countries Holding 'A' 3 or More Times
  SELECT 
         c.CountryName
       , c.IsoCode
    FROM [Countries] AS c
   WHERE LEN(c.CountryName) - LEN(REPLACE(LOWER(c.CountryName), 'a', '')) >= 3
ORDER BY c.IsoCode




