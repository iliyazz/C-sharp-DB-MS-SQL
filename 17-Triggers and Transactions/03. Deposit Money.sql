--17-Triggers and Transactions
--03. Deposit Money
CREATE /*OR ALTER*/ PROCEDURE usp_DepositMoney(@AccountId INT, @MoneyAmount DECIMAL(15, 4))
AS
    BEGIN TRANSACTION
	 IF(@moneyAmount < 0)
         BEGIN
			RAISERROR('Cannot deposit negative value', 16, 1);
         END;
	UPDATE Accounts
    SET Balance += @MoneyAmount
    WHERE Id = @AccountId
	    IF(@@ROWCOUNT <> 1)
    	BEGIN
    		ROLLBACK
    		RAISERROR ('Invalid account.', 16, 1)
    	END
    COMMIT

EXEC usp_DepositMoney 1, 10
EXEC usp_DepositMoney 1, -10


