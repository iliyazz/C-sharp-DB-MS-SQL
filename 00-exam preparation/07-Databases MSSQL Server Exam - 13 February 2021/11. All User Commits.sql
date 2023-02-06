--11. All User Commits
CREATE FUNCTION udf_AllUserCommits(@username VARCHAR(30))
RETURNS INT
AS
BEGIN
	RETURN(
			SELECT COUNT(u.Id)
			  FROM Users AS u
			  JOIN Commits AS c ON u.Id = c.ContributorId
			 WHERE u.Username = @username
			)
END
GO

SELECT dbo.udf_AllUserCommits('UnderSinduxrein')
GO




