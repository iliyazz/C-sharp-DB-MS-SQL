--04.Exercise: Databases Introduction
--Exercise 13 Movies Database
CREATE DATABASE Movies

CREATE TABLE [Directors](
[Id] INT PRIMARY KEY IDENTITY,
[DirectorName] NVARCHAR(50) NOT NULL,
[Notes] NVARCHAR(1000)
)
INSERT INTO Directors (DirectorName)
VALUES
('Maria'),
('Sasho'),
('Ivan'),
('Pesho'),
('Gosho')

CREATE TABLE [Genres](
[Id] INT PRIMARY KEY IDENTITY,
[GenreName] NVARCHAR(50) NOT NULL,
[Notes] NVARCHAR(1000)
)
INSERT INTO Genres(GenreName)
VALUES
('Action'),
('Comedy'),
('Drama'),
('Fantasy'),
('Horror')

CREATE TABLE [Categories](
[Id] INT PRIMARY KEY IDENTITY,
[CategoryName] NVARCHAR(50) NOT NULL,
[Notes] NVARCHAR(1000)
)
INSERT INTO [Categories](CategoryName)
VALUES
('Action1'),
('Comedy1'),
('Drama1'),
('Fantasy1'),
('Horror1')


CREATE TABLE [Movies](
[Id] INT PRIMARY KEY IDENTITY,
[Title] NVARCHAR(50) NOT NULL,
[DirectorId] INT NOT NULL,
[CopyrightYear] INT NOT NULL,
[Length] DECIMAL(3,2) NOT NULL,
[GenreId] INT NOT NULL,
[CategoryId] INT NOT NULL,
[Rating] DECIMAL(2,1) NOT NULL,
[Notes] NVARCHAR(1000)
)

INSERT INTO [Movies]([Title], [DirectorId], [CopyrightYear], [Length], [GenreId], [CategoryId], [Rating])
VALUES
('The Shawshank Redemption', 1, 1994, 2.40, 5, 2, 9.4),
('The Godfather', 2, 1972, 2.40, 3, 4, 9.2),
('The Dark Knight', 4, 1993, 2.40, 4, 1, 9.1),
('12 Angry Men', 3, 1975, 2.40, 1, 3, 9.0),
('Pulp Fiction', 5, 1999, 2.40, 2, 5, 8.5)
