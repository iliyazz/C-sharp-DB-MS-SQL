--16-Exercise Functions and Procedures
--12. Calculating Interest 
CREATE PROCEDURE usp_CalculateFutureValueForAccount (@accoundId INT, @interestRate FLOAT)
AS
BEGIN
	DECLARE @numberOfYears INT = 5
	 SELECT ah.Id AS [Account Id]
	      , ah.FirstName
	      , ah.LastName
	      , a.Balance AS [Current Balance]
	      , dbo.ufn_CalculateFutureValue(a.Balance, @interestRate, @numberOfYears) AS [Balance in 5 years]
	   FROM AccountHolders AS ah
	   JOIN Accounts AS a ON ah.Id = a.AccountHolderId
	  WHERE a.Id = @accoundId
END
GO

EXEC usp_CalculateFutureValueForAccount 1, 0.1
GO
