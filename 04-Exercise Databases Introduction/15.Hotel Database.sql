--04.Exercise: Databases Introduction
--Exercise 15 Hotel Database
CREATE DATABASE [Hotel]
USE [Hotel]

CREATE TABLE [Employees](
[Id] INT PRIMARY KEY IDENTITY,
[FirstName] NVARCHAR(50) NOT NULL,
[LastName] NVARCHAR(50) NOT NULL,
[Title] NVARCHAR(30) NOT NULL,
[Notes] NVARCHAR(1000)
)
INSERT INTO [Employees](FirstName, LastName, Title)
VALUES
('Ivan', 'Ivanov', 'manager'),
('Tosho', 'Toshev', 'receptionist'),
('Georgi', 'Georgiev', 'croupier')

CREATE TABLE [Customers](
[AccountNumber] INT PRIMARY KEY IDENTITY,
[FirstName] NVARCHAR(50) NOT NULL,
[LastName] NVARCHAR(50) NOT NULL,
[PhoneNumber] NVARCHAR(20) NOT NULL,
[EmergencyName] NVARCHAR(100) NOT NULL,
[EmergencyNumber] NVARCHAR(20) NOT NULL,
[Notes] NVARCHAR(1000)
)
INSERT INTO [Customers](FirstName, LastName, PhoneNumber, EmergencyName, EmergencyNumber)
VALUES
('Stefan', 'Borisov', '03574638765', 'Maria Borisova', '08523596255'),
('Nikolina', 'Mileva', '06285525562', 'Toncho Bonchev', '096285174856'),
('Zlatka', 'Koleva', '03574638765', 'Milko Toshev', '09756652456')

CREATE TABLE RoomStatus (
RoomStatus NVARCHAR(50) PRIMARY KEY NOT NULL,
Notes NVARCHAR(1000)
)
INSERT INTO RoomStatus (RoomStatus)
VALUES
('occupied'),
('non occupied'),
('being prepared')

CREATE TABLE RoomTypes (
RoomType NVARCHAR(50) PRIMARY KEY NOT NULL,
Notes NVARCHAR(1000)
)
INSERT INTO RoomTypes (RoomType)
VALUES
('single'),
('double'),
('apartament')

CREATE TABLE BedTypes (
BedType NVARCHAR(50) PRIMARY KEY NOT NULL,
Notes NVARCHAR(1000)
)
INSERT INTO BedTypes(BedType)
VALUES
('single'),
('double'),
('twin')

CREATE TABLE Rooms (
RoomNumber INT PRIMARY KEY NOT NULL,
RoomType NVARCHAR(50) FOREIGN KEY REFERENCES RoomTypes(Roomtype) NOT NULL,
BedType NVARCHAR(50) FOREIGN KEY REFERENCES BedTypes(BedType) NOT NULL,
Rate DECIMAL(6,2) NOT NULL,
RoomStatus NVARCHAR(50) FOREIGN KEY REFERENCES RoomStatus(RoomStatus) NOT NULL,
Notes NVARCHAR(1000)
)
INSERT INTO Rooms(RoomNumber, RoomType, BedType, Rate, RoomStatus)
VALUES
(301, 'single', 'double', 153.78, 'occupied'),
(302, 'double', 'single', 183.95, 'non occupied'),
(303, 'apartament', 'twin', 1153.00, 'being prepared')

CREATE TABLE Payments (
Id INT PRIMARY KEY IDENTITY,
EmployeeId INT FOREIGN KEY REFERENCES Employees(Id) NOT NULL,
PaymentDate DATETIME2,
AccountNumber INT FOREIGN KEY REFERENCES Customers(AccountNumber) NOT NULL,
FirstDateOccupied DATE NOT NULL,
LastDateOccupied DATE NOT NULL,
TotalDays AS DATEDIFF(DAY, FirstDateOccupied, LastDateOccupied),
AmountCharged DECIMAL(6,2) NOT NULL,
TaxRate DECIMAL(6,2) NOT NULL,
TaxAmount AS AmountCharged * TaxRate,
PaymentTotal  AS AmountCharged + AmountCharged * TaxRate /100,
Notes NVARCHAR(1000)
)
INSERT INTO Payments(EmployeeId, PaymentDate, AccountNumber, FirstDateOccupied, LastDateOccupied, AmountCharged, TaxRate) VALUES
(1, '2022-01-25', 2, '2022-01-30', '2022-02-04', 200.0, 20),
(3, '2022-02-03', 3, '2022-08-10', '2022-06-11', 300.0, 20),
(3, '2022-03-15', 2, '2022-04-20', '2022-04-22', 600.0, 20)

CREATE TABLE Occupancies (
Id INT PRIMARY KEY IDENTITY,
EmployeeId INT FOREIGN KEY REFERENCES Employees(Id) NOT NULL,
DateOccupied DATE NOT NULL,
AccountNumber INT FOREIGN KEY REFERENCES Customers(AccountNumber) NOT NULL,
RoomNumber INT FOREIGN KEY REFERENCES Rooms(RoomNumber) NOT NULL,
RateApplied DECIMAL(6, 2) NOT NULL,
PhoneCharge DECIMAL(9, 2) NOT NULL,
Notes NVARCHAR(1000)
)
INSERT INTO Occupancies(EmployeeId, DateOccupied, AccountNumber, RoomNumber, RateApplied, PhoneCharge)
VALUES
(2, '2022-08-06', 3, 302, 510.0, 10.11),
(2, '2022-09-07', 1, 301, 80.0, 15.16),
(3, '2022-10-08', 2, 303, 40.0, 101.50)

