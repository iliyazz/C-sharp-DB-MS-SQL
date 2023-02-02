--16-Exercise Functions and Procedures
--10. People with Balance Higher Than
CREATE PROCEDURE usp_GetHoldersWithBalanceHigherThan @balanceCompare MONEY
AS
BEGIN
	  SELECT ah.FirstName
	       , ah.LastName
	    FROM Accounts AS a
	    JOIN AccountHolders AS ah ON ah.Id = a.AccountHolderId
	GROUP BY ah.Id, ah.FirstName, ah.LastName
	  HAVING SUM(a.Balance) > @balanceCompare
	ORDER BY ah.FirstName, ah.LastName
END
GO

EXEC dbo.usp_GetHoldersWithBalanceHigherThan 50000
GO
