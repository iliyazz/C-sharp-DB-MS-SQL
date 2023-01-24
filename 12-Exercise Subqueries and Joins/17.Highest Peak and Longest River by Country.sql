--12-Exercise Subqueries and Joins
--17.Highest Peak and Longest River by Country
   SELECT TOP 5
          [c].[CountryName]
        , MAX([p].[Elevation]) AS  [HighestPeakElevation]
        , MAX([r].[Length]) AS [LongestRiverLength]
     FROM [Countries] AS [c]
LEFT JOIN [MountainsCountries] AS [mc] ON [c].[CountryCode] = [mc].[CountryCode]
LEFT JOIN [Peaks] AS [p] ON [mc].[MountainId] = [p].[MountainId] 
LEFT JOIN [CountriesRivers] AS [cr] ON [c].[CountryCode] = [cr].[CountryCode]
LEFT JOIN [Rivers] AS [r] ON [cr].[RiverId] = [r].[Id]
 GROUP BY [c].[CountryName]
 ORDER BY [HighestPeakElevation] DESC, [LongestRiverLength] DESC, [c].[CountryName] ASC
