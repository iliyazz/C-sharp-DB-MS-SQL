--04.Exercise: Databases Introduction
--Exercise 23 Decrease Tax Rate
USE Hotel

UPDATE Payments
SET TaxRate = TaxRate * 0.97
SELECT TaxRate FROM Payments
