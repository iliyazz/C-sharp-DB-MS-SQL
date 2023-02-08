--04. Delete
DELETE FROM Feedbacks
 WHERE CustomerId IN (SELECT CustomerId
					    FROM Feedbacks
					   WHERE CustomerId =14)
DELETE FROM Feedbacks
 WHERE ProductId IN(SELECT ProductId
					  FROM Feedbacks
					 WHERE  ProductId = 5)
