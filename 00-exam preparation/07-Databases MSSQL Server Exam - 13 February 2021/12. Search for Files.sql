--12. Search for Files
CREATE PROCEDURE usp_SearchForFiles(@fileExtension VARCHAR(100))
AS
BEGIN
	SELECT Id
	     , [Name]
	     , CONCAT(Size, 'KB')
	  FROM Files
	 WHERE reverse(left(reverse([Name]),charindex('.',reverse([Name]))-1)) = @fileExtension
END
GO

EXEC usp_SearchForFiles 'txt'
GO


