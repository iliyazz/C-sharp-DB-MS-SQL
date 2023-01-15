--04.Exercise: Databases Introduction
--Exercise 8, Create Table Users
CREATE TABLE [Users](
[Id] INT PRIMARY KEY IDENTITY,
[Username] VARCHAR(30) UNIQUE NOT NULL,
[Password] VARCHAR(26) NOT NULL,
[ProfilePicture] VARBINARY(MAX),
CHECK (DATALENGTH([ProfilePicture]) <= 900000),--0.9MB=0.9*10^6 bit, Build in function length in byte
[LastLoginTime] DATETIME2,
[IsDeleted] BIT
)

INSERT INTO [Users]
VALUES
('Maria', '123456', NULL, '10-20-2022',0),
('Sasho', '1234567', NULL, '11-21-2022',0),
('Ivan', '1234568', NULL, '12-22-2022',0),
('Pesho', '1234569', NULL, '8-23-2022',1),
('Gosho', '1234560', NULL, '5-24-2022',0)
