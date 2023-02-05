--12. Cost of Order
CREATE /*OR ALTER*/ FUNCTION udf_GetCost(@JobId INT)
RETURNS DECIMAL(18, 2)
AS
BEGIN
	RETURN ISNULL((
					SELECT SUM(p.Price)
					FROM Jobs AS j
					JOIN Orders AS o ON j.JobId = o.JobId
					JOIN OrderParts AS op ON o.OrderId = op.OrderId
					JOIN Parts AS p ON op.PartId = p.PartId
					WHERE j.JobId = @JobId
					GROUP BY  j.JobId
					), 0)
END
GO
SELECT dbo.udf_GetCost(1)
SELECT dbo.udf_GetCost(3)
/*1
91.86
3
40.97*/
