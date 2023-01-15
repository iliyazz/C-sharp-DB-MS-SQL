--04.Exercise: Databases Introduction
--Exercise 10 Add Check Constraint
ALTER TABLE [Users] ADD CONSTRAINT CHK_PasswordMinLen CHECK (LEN([Password]) >= 5)
