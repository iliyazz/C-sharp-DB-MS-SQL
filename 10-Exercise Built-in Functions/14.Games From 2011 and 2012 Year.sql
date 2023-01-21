--10-Exercise Built-in Functions
--14.Games From 2011 and 2012 Year
  SELECT TOP (50)
         [Name]
       , FORMAT([Start], 'yyyy-MM-dd') AS [Start]
    FROM Games
   --WHERE YEAR([Start]) = 2011 OR YEAR([Start]) = 2012
   WHERE YEAR([Start]) IN (2011, 2012)
ORDER BY [Start] ASC
       , [Name] ASC