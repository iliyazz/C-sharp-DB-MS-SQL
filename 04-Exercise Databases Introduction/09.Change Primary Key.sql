--04.Exercise: Databases Introduction
--Exercise 9, Change Primary Key
ALTER TABLE [Users] DROP CONSTRAINT PK__Users__3214EC072FEC9AD9
ALTER TABLE [Users] ADD CONSTRAINT PK_IdUsername PRIMARY KEY (Id, Username)
