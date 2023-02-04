--17-Triggers and Transactions
--05. Money Transfer
CREATE OR ALTER PROCEDURE usp_TransferMoney(@SenderId INT, @ReceiverId INT, @Amount DECIMAL(20, 4))
AS
BEGIN TRANSACTION
	IF(@Amount < 0)
         BEGIN
			RAISERROR('Cannot deposit negative value', 16, 1);
         END;
	UPDATE Accounts
    SET Balance -= @Amount
    WHERE Id = @SenderId
	    IF(@@ROWCOUNT <> 1)
    	BEGIN
    		ROLLBACK
    		RAISERROR ('Invalid account.', 16, 1)
    	END
	    IF((SELECT Balance
		   FROM Accounts
		  WHERE Id = @SenderId) <0
		)
    	BEGIN
    		ROLLBACK
    		RAISERROR ('Insufficient funds on the account.', 16, 1)
    	END

	UPDATE Accounts
    SET Balance += @Amount
    WHERE Id = @ReceiverId
	    IF(@@ROWCOUNT <> 1)
    	BEGIN
    		ROLLBACK
    		RAISERROR ('Invalid account.', 16, 1)
    	END
COMMIT
GO

EXEC usp_TransferMoney 15, 1, 5000
GO



