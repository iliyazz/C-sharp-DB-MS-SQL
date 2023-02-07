--17-Triggers and Transactions
--06. Massive Shopping
DECLARE @userGameId INT =(SELECT ug.Id
							FROM UsersGames AS ug
							JOIN Users AS u ON ug.UserId = u.Id
							JOIN Games AS g ON ug.GameId = g.Id
						   WHERE u.Username = 'Stamat' AND g.[Name] = 'Safflower')
DECLARE @TotalPriceOfGames MONEY
DECLARE @minLevel1 INT = 11
DECLARE @minLevel2 INT = 12
DECLARE @AvailableMoney MONEY = (SELECT Cash FROM UsersGames
								  WHERE Id = @userGameId)

SET @TotalPriceOfGames =(SELECT SUM(Price) FROM Items	
						  WHERE MinLevel BETWEEN @minLevel1 AND @minLevel2)

IF (@AvailableMoney >= @TotalPriceOfGames)
BEGIN
	 BEGIN TRANSACTION 
	UPDATE UsersGames
	   SET Cash -= @TotalPriceOfGames
	 WHERE Id = @userGameId
	INSERT INTO UserGameItems(ItemId, UserGameId)
	SELECT Id, @userGameId
	  FROM Items WHERE MinLevel BETWEEN @minLevel1 AND @minLevel2
	COMMIT
END

SET @minLevel1 = 19
SET @minLevel2 = 21

SET @AvailableMoney =( SELECT Cash FROM UsersGames
						WHERE Id = @userGameId)

SET @TotalPriceOfGames = ( SELECT SUM(Price) FROM Items
							WHERE MinLevel BETWEEN @minLevel1 AND @minLevel2)

IF(@AvailableMoney >= @TotalPriceOfGames)
BEGIN 
	 BEGIN TRANSACTION
	UPDATE UsersGames
	   SET Cash -= @TotalPriceOfGames
	 WHERE Id = @userGameId
	INSERT INTO UserGameItems(ItemId, UserGameId)
	SELECT Id,@userGameId FROM Items
	 WHERE MinLevel BETWEEN @minLevel1 AND @minLevel2
	COMMIT
END

  SELECT i.[Name] AS [Item Name]
    FROM UserGameItems AS ugi
    JOIN Items AS i ON i.Id = ugi.ItemId
    JOIN UsersGames AS ug ON ug.Id = ugi.UserGameId
    JOIN Games AS g ON g.Id = ug.GameId
   WHERE g.[Name] = 'Safflower'
ORDER BY [Item Name]

