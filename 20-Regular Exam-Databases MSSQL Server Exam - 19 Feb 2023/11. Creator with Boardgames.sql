--11. Creator with Boardgames
CREATE FUNCTION udf_CreatorWithBoardgames(@name NVARCHAR(30))
RETURNS INT
AS
BEGIN
	DECLARE @numberOfGames INT = (
									SELECT COUNT(*)
									FROM Creators AS c
									JOIN CreatorsBoardgames AS cb ON c.Id = cb.CreatorId
									WHERE c.FirstName = @name
								 )
	RETURN ISNULL(@numberOfGames, 0)
END

GO
SELECT dbo.udf_CreatorWithBoardgames('Bruno')
