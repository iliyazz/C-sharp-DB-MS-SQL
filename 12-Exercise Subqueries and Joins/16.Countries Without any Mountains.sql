--12-Exercise Subqueries and Joins
--16.Countries Without any Mountains
   SELECT COUNT([c].[ContinentCode])-- AS [CountryCode]
     FROM [Countries] AS [c]
LEFT JOIN [MountainsCountries] AS [mc] ON [c].[CountryCode] = [mc].[CountryCode]
    WHERE [MountainId] IS NULL
