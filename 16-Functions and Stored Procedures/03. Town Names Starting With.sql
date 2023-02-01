--16-Exercise Functions and Procedures
--03. Town Names Starting With
CREATE OR ALTER PROC usp_GetTownsStartingWith(@StartingWith NVARCHAR(50))
AS
SELECT t.[Name] AS Town
  FROM Towns AS t
 WHERE t.[Name] LIKE @StartingWith + '%'
GO

EXEC usp_GetTownsStartingWith 'B'
GO




