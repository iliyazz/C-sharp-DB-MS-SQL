--16-Exercise Functions and Procedures
--09. Find Full Name
CREATE /*OR ALTER*/ PROCEDURE usp_GetHoldersFullName
AS
BEGIN
	SELECT CONCAT_WS(' ',ah.FirstName, ah.LastName) AS [Full Name]
	  FROM AccountHolders AS ah
END
GO

EXEC dbo.usp_GetHoldersFullName
GO
