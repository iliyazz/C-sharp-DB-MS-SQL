--17-Triggers and Transactions
--02. Create Table Emails
CREATE TABLE NotificationEmails(
Id INT PRIMARY KEY IDENTITY,
Recipient INT NOT NULL,
[Subject] NVARCHAR(50) NOT NULL,
Body NVARCHAR(150) NOT NULL
CONSTRAINT FK_Recipient_AccountId FOREIGN KEY(Recipient) REFERENCES Accounts(Id)
)
GO

CREATE TRIGGER tr_EmailNotification
ON Logs
AFTER INSERT
AS 
BEGIN
    INSERT INTO NotificationEmails (Recipient, Subject, Body)
         SELECT i.AccountId,
                CONCAT('Balance change for account: ', i.AccountId),
                CONCAT('On ', GETDATE(), ' your balance was changed from ', i.OldSum, ' to ', i.NewSum, '.')
           FROM INSERTED i
END









