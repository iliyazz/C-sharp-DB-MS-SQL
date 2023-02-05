--11. Place Order
CREATE OR ALTER PROCEDURE usp_PlaceOrder (@jobId INT, @partSerialNumber VARCHAR(50), @quantity INT )
AS
BEGIN
	IF(@quantity <= 0)
		BEGIN;
			THROW 50012, 'Part quantity must be more than zero!', 1
		END
	IF((SELECT [Status] FROM Jobs WHERE JobId = @jobId ) = 'Finished')
		BEGIN;
			THROW 50011, 'This job is not active!', 1
		END;
	IF((SELECT JobId FROM Jobs WHERE JobId = @jobId ) IS NULL)
		BEGIN;
			THROW 50013, 'Job not found!', 1
		END
	IF((SELECT SerialNumber FROM Parts WHERE SerialNumber = @partSerialNumber) IS NULL)
		BEGIN;
			THROW 50014, 'Part not found!', 1
		END
	IF((SELECT JobId FROM Orders WHERE JobId = @jobId AND IssueDate IS NULL) IS NULL)--add order if not exist
		BEGIN
			INSERT INTO Orders(JobId, IssueDate, Delivered )
			VALUES (@jobId, NULL, 0)
		END;
        DECLARE @orderId INT = (SELECT TOP 1 OrderId FROM Orders WHERE JobId = @jobId AND IssueDate IS NULL )
        DECLARE @partId INT = ( SELECT PartId FROM Parts WHERE SerialNumber = @partSerialNumber )
        IF(( SELECT PartId FROM OrderParts WHERE PartId = @partId AND OrderId = @orderId ) IS NULL)
		BEGIN--add part if not exists
			INSERT INTO OrderParts(OrderId, PartId, Quantity )
			VALUES ( @orderId, @partId, @quantity )
		END;
	ELSE
		BEGIN--add quantity
			UPDATE OrderParts
			SET Quantity+=@quantity
			WHERE PartId = @partId AND OrderId = @orderId
		END
END

DECLARE @err_msg AS NVARCHAR(MAX);
BEGIN TRY
  EXEC usp_PlaceOrder 1, 'ZeroQuantity', 0
END TRY

BEGIN CATCH
  SET @err_msg = ERROR_MESSAGE();
  SELECT @err_msg
END CATCH