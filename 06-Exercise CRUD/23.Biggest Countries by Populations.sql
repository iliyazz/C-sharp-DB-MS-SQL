--06.Exercise CRUD
--23.Biggest Countries by Populations
--Part II – Queries for Geography Database
  SELECT TOP(30)
         c.CountryName
         ,c.[Population]
    FROM Countries AS c
   WHERE c.ContinentCode IN ('EU')
   --WHERE c.ContinentCode = 'EU'
ORDER BY c.[Population] DESC




