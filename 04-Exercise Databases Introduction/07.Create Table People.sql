--04.Exercise: Databases Introduction
--Exercise 7, Create Table People
CREATE TABLE [People] (
[Id] INT PRIMARY KEY IDENTITY,
[Name] NVARCHAR(200) NOT NULL,
[Picture] VARBINARY(MAX),
CHECK (DATALENGTH([Picture]) <= 2000000),--2MB=2*10^6 bit, Build in function length in byte
[Height] DECIMAL(3,2),
[Weight] DECIMAL(5,2),
[Gender] CHAR(1) NOT NULL,
CHECK ([Gender] = 'm' OR [Gender] = 'f'),--CHECK ([Gender] IN = ('m', 'f'))
[Birthdate] DATE NOT NULL,
[Biography] NVARCHAR(MAX)
)

INSERT INTO [People]([Name], [Height], [Weight], [Gender], [Birthdate])
VALUES
('Pesho', 1.78, 75.2, 'm', '1997-06-26'),
('Maria', 1.79, 76.2, 'f', '1996-04-12'),
('Gosho', NULL, NULL, 'm', '1995-03-05'),
('Ivan', 1.95, 105.2, 'm', '1994-02-21'),
('Viktoria', NULL, 55.2, 'f', '1998-07-16')
