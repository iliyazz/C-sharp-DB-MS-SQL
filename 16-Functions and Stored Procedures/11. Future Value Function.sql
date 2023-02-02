--16-Exercise Functions and Procedures
--11. Future Value Function
CREATE /*OR ALTER*/ FUNCTION ufn_CalculateFutureValue(@sum DECIMAL(20, 4), @yearlyIinterestRate FLOAT, @numberOfYears INT)
RETURNS DECIMAL(20, 4)
AS
BEGIN
	RETURN @sum * POWER(1 + @yearlyIinterestRate, @numberOfYears)
END
GO

SELECT dbo.ufn_CalculateFutureValue(1000, 0.1, 5)
GO
