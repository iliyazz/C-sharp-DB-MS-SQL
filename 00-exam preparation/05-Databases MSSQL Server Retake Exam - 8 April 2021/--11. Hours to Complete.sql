--11. Hours to Complete
CREATE /*OR ALTER*/ FUNCTION udf_HoursToComplete(@StartDate DATETIME, @EndDate DATETIME)
RETURNS INT
AS
BEGIN
	RETURN(
			ISNULL(DATEDIFF(HOUR, @StartDate, @EndDate),0))
END
GO

SELECT dbo.udf_HoursToComplete(OpenDate, CloseDate) AS TotalHours
   FROM Reports



