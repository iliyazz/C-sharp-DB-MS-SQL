--17-Triggers and Transactions
--03. Deposit Money
CREATE /*OR ALTER*/ PROCEDURE usp_DepositMoney(@AccountId INT, @MoneyAmount DECIMAL(15, 4))
AS
    BEGIN TRANSACTION
	UPDATE Accounts
    SET Balance += @MoneyAmount
    WHERE Id = @AccountId
	    IF(@@ROWCOUNT <> 1)
    	BEGIN
    		ROLLBACK
    		RAISERROR ('Invalid account.', 16, 1)
    	END
    COMMIT

GO

EXEC usp_DepositMoney 1, 10


