CREATE DATABASE Zoo
GO
USE Zoo
GO

USE [master]
GO
DROP DATABASE Zoo
GO

--01. DDL------------------------
CREATE TABLE Owners(
Id INT PRIMARY KEY IDENTITY,
[Name] VARCHAR(50) NOT NULL,
PhoneNumber VARCHAR(15) NOT NULL,
[Address] VARCHAR(50)
)
CREATE TABLE AnimalTypes(
Id INT PRIMARY KEY IDENTITY,
AnimalType VARCHAR(30) NOT NULL
)
--04. Delete -----------------------------
DELETE FROM Volunteers
WHERE DepartmentId = 2

SELECT * FROM VolunteersDepartments
DELETE FROM VolunteersDepartments
WHERE Id = 2



