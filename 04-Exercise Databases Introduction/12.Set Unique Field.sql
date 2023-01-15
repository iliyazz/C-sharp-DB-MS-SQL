--04.Exercise: Databases Introduction
--Exercise 12 Set Unique Field
ALTER TABLE [Users] DROP CONSTRAINT PK_IdUsername
ALTER TABLE [Users] ADD CONSTRAINT PK_Id PRIMARY KEY (Id)
ALTER TABLE [Users] ADD CONSTRAINT UC_Username UNIQUE (Username)
ALTER TABLE [Users] ADD CONSTRAINT [PK_IdUsername] CHECK (LEN(Username) >=3)
