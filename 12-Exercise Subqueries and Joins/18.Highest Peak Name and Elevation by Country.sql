--12-Exercise Subqueries and Joins
--18.Highest Peak Name and Elevation by Country
SELECT TOP (5)
         c.CountryName,
          ISNULL(p.PeakName, '(no highest peak)') AS HighestPeakName
        , ISNULL(MAX(p.Elevation), 0) AS HighestPeakElevation
        , ISNULL(m.MountainRange, '(no mountain)')
     FROM Countries AS c
LEFT JOIN MountainsCountries AS mc ON c.CountryCode = mc.CountryCode
LEFT JOIN Mountains AS m ON mc.MountainId = m.Id
LEFT JOIN Peaks AS p ON m.Id= p.MountainId
    GROUP BY c.CountryName, p.PeakName, m.MountainRange
    ORDER BY c.CountryName, p.PeakName
	