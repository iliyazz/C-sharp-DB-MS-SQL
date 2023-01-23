--12-Exercise Subqueries and Joins
--13.Count Mountain Ranges
   SELECT 
          c.CountryCode
        , COUNT(mc.MountainId) AS MountainRanges
     FROM Countries AS c
LEFT JOIN MountainsCountries AS mc ON c.CountryCode = mc.CountryCode
    WHERE c.CountryName IN('United States', 'Russia', 'Bulgaria')
 GROUP BY c.CountryCode