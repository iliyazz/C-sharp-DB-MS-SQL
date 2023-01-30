--12. Annual Reward Lottery
CREATE PROC usp_AnnualRewardLottery(@TouristName VARCHAR(50))
AS
BEGIN
IF(
        SELECT COUNT(st.SiteId)
                FROM Tourists AS t
                JOIN SitesTourists AS st ON t.Id = st.TouristId
               WHERE t.[Name] = @TouristName) >= 100
        BEGIN
               UPDATE Tourists
               SET Reward = 'Gold badge'
               WHERE [Name] = @TouristName
        END
ELSE IF(
        SELECT COUNT(st.SiteId)
                   FROM Tourists AS t
                   JOIN SitesTourists AS st ON t.Id = st.TouristId
                  WHERE t.[Name] = @TouristName) >= 50
         BEGIN
                  UPDATE Tourists
                  SET Reward = 'Silver badge'
                  WHERE [Name] = @TouristName
           END
        
ELSE IF(
        SELECT COUNT(st.SiteId)
                   FROM Tourists AS t
                   JOIN SitesTourists AS st ON t.Id = st.TouristId
                  WHERE t.[Name] = @TouristName) >= 25
         BEGIN
                  UPDATE Tourists
                  SET Reward = 'Bronze badge'
                  WHERE [Name] = @TouristName
           END
SELECT t.[Name]
, t.Reward
  FROM Tourists AS t
 WHERE t.[Name] = @TouristName
END

-- EXEC usp_AnnualRewardLottery 'Gerhild Lutgard'
-- EXEC usp_AnnualRewardLottery 'Teodor Petrov'
-- EXEC usp_AnnualRewardLottery 'Zac Walsh'
-- EXEC usp_AnnualRewardLottery 'Brus Brown'