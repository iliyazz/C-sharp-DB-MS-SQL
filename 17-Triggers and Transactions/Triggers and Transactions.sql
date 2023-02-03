--17-Triggers and Transactions
U--01. Create Table Logs
CREATE TABLE Logs(
LogId INT IDENTITY,
AccountId INT NOT NULL,
OldSum DECIMAL(20, 2),
NewSum DECIMAL(20, 2)
CONSTRAINT PK_LogId PRIMARY KEY(LogId)
CONSTRAINT FK_AccountId FOREIGN KEY(AccountId) REFERENCES Accounts(Id)
)
GO

CREATE TRIGGER tr_AddLogsOnAccountUpdate
ON Accounts FOR UPDATE
AS
INSERT INTO Logs(AccountId, OldSum, NewSum)
     SELECT i.Id
          , d.Balance
          , i.Balance
       FROM inserted AS i
       JOIN deleted AS d ON i.Id = d.Id
GO

-- UPDATE Accounts
-- SET Balance = 13
-- WHERE Id = 15
