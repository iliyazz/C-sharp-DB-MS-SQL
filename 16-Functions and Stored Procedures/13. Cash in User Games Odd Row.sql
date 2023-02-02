--16-Exercise Functions and Procedures
--13. *Cash in User Games Odd Rows 
-- USE Diablo
-- GO
CREATE /*OR ALTER*/ FUNCTION ufn_CashInUsersGames (@gameName NVARCHAR(50))
RETURNS TABLE 
AS
RETURN
(
SELECT SUM(Cash) AS [SumCash]
 FROM(
             SELECT g.[Name]
                  , ug.Cash
                  , ROW_NUMBER() OVER(ORDER BY ug.Cash DESC) AS rowNumber
               FROM UsersGames AS ug
         INNER JOIN Games AS g ON ug.GameId = g.Id
              WHERE g.[Name] = @gameName) AS rankungSub
 WHERE rowNumber % 2 = 1
)
GO

SELECT * FROM dbo.ufn_CashInUsersGames('Love in a mist')
GO
