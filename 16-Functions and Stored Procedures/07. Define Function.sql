--16-Exercise Functions and Procedures
--07. Define Function
CREATE /*OR ALTER */FUNCTION ufn_IsWordComprised(@setOfLetters NVARCHAR(100), @word NVARCHAR(100))
RETURNS BIT
AS
BEGIN
	DECLARE @Count INT = 1
	WHILE @Count <= LEN(@word)
		BEGIN
			IF CHARINDEX(SUBSTRING(@word, @Count, 1), @setOfLetters) = 0
				RETURN 0
				SET @Count += 1
		END
	RETURN 1
END
GO

SELECT dbo.ufn_IsWordComprised('oistmiahf', 'Sofia')
SELECT dbo.ufn_IsWordComprised('oistmiahf', 'halves')
SELECT dbo.ufn_IsWordComprised('bobr', 'Rob')
SELECT dbo.ufn_IsWordComprised('pppp', 'Guy')
GO