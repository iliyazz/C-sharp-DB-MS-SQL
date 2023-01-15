--04.Exercise: Databases Introduction
--Exercise 11 Set Default Value of a Field
ALTER TABLE [Users] ADD CONSTRAINT DF_LastLoginTime DEFAULT GETDATE() FOR [LastLoginTime]
