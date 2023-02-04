--17-Triggers and Transactions
--04. Withdraw Money Procedure
CREATE/* OR ALTER*/ PROCEDURE usp_WithdrawMoney (@AccountId INT, @MoneyAmount DECIMAL(20, 4))
AS
    BEGIN TRANSACTION
	IF(@moneyAmount < 0)
         BEGIN
			RAISERROR('Cannot deposit negative value', 16, 1);
         END;
	UPDATE Accounts
    SET Balance -= @MoneyAmount
    WHERE Id = @AccountId
	    IF(@@ROWCOUNT <> 1)
    	BEGIN
    		ROLLBACK
    		RAISERROR ('Invalid account.', 16, 1)
    	END
    COMMIT
GO

EXEC usp_WithdrawMoney 5, 25




