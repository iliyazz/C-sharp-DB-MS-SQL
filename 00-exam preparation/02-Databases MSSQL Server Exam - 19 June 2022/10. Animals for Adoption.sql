--10. Animals for Adoption
  SELECT a.[Name]
       , YEAR(a.BirthDate) AS BirthYear
       , [at].AnimalType
    FROM Animals AS a
    JOIN AnimalTypes AS [at] ON a.AnimalTypeId = [at].Id
   WHERE a.OwnerId IS NULL AND
         DATEDIFF(YEAR, a.BirthDate, '2022-01-01') < 5 AND
         [at].AnimalType NOT IN('Birds')
ORDER BY a.[Name]
