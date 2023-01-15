--04.Exercise: Databases Introduction
--Exercise 14 Car Rental Database
CREATE DATABASE [CarRental]
USE CarRental

CREATE TABLE [Categories] (
[Id] INT PRIMARY KEY IDENTITY,
[CategoryName] NVARCHAR(50) NOT NULL,
[DailyRate] TINYINT NOT NULL,
[WeeklyRate] TINYINT NOT NULL,
[MonthlyRate] TINYINT NOT NULL,
[WeekendRate] TINYINT NOT NULL
)
INSERT INTO [Categories]
VALUES
('SEDAN', 2, 4, 3, 6),
('COUPE', 4, 5, 7, 5),
('HATCHBACK', 7, 6, 8, 9)

CREATE TABLE [Cars](
[Id] INT PRIMARY KEY IDENTITY,
[PlateNumber] VARCHAR(10) NOT NULL,
[Manufacturer] VARCHAR(30) NOT NULL,
[Model] VARCHAR(30) NOT NULL,
[CarYear] INT NOT NULL,
[CategoryId] INT NOT NULL,
[Doors] TINYINT NOT NULL,
[Picture] VARBINARY(MAX),
CHECK (DATALENGTH([Picture]) <= 300000),
[Condition] VARCHAR(30) NOT NULL,
[Available] VARCHAR(3) NOT NULL,
CHECK ([Available] = 'yes' OR [Available] = 'no')
)
INSERT INTO [Cars]([PlateNumber], [Manufacturer], [Model], [CarYear], [CategoryId], [Doors], [Condition], [Available])
VALUES
('C1234AT', 'Opel', 'Astra', 2020, 1, 5, 'rusty', 'yes'),
('CA6436AM', 'BMV', 'X6', 2021, 3, 5, 'crashed', 'yes'),
('C9944TT', 'Audi', 'TT', 2015, 2, 2, 'oiled', 'no')

CREATE TABLE [Employees] (
[Id] INT PRIMARY KEY IDENTITY,
[FirstName] NVARCHAR(50) NOT NULL,
[LastName] NVARCHAR(50) NOT NULL,
[Title] NVARCHAR(30) NOT NULL,
[Notes] NVARCHAR(1000)
)
INSERT INTO [Employees]([FirstName], [LastName], [Title])
VALUES
('Pesho', 'Peshev', 'manager'),
('Tosho', 'Toshev', 'seller'),
('Гошо', 'Гошев', 'mechanic')

CREATE TABLE [Customers](
[Id] INT PRIMARY KEY IDENTITY,
[DriverLicenceNumber] VARCHAR(50) NOT NULL,
[FullName] NVARCHAR(100) NOT NULL,
[Address] NVARCHAR(100) NOT NULL,
[City] NVARCHAR(100) NOT NULL,
[ZIPCode] INT,
[Notes] NVARCHAR(1000)
)
INSERT INTO [Customers]([DriverLicenceNumber], [FullName], [Address], [City])
VALUES
('OIJDV7H3O48PRG', 'Цвети Цветанова', 'улица Марица 5', 'София'),
('HGSDIHB5467YHV', 'Марин Маринов', 'улица Вардар 25', 'Пловдив'),
('OIJDV7H3O48PRG', 'Асен Асенов', 'булевард Тракия 155', 'Варна')

CREATE TABLE [RentalOrders](
[Id] INT PRIMARY KEY IDENTITY,
EmployeeId INT NOT NULL,
CustomerId INT NOT NULL,
CarId INT NOT NULL,
TankLevel TINYINT NOT NULL,
KilometrageStart INT NOT NULL,
KilometrageEnd INT NOT NULL,
TotalKilometrage INT NOT NULL,
StartDate DATETIME2 NOT NULL,
EndDate DATETIME2 NOT NULL,
TotalDays INT NOT NULL,
RateApplied DECIMAL(7, 2) NOT NULL,
TaxRate DECIMAL(3,1) NOT NULL,
OrderStatus BIT NOT NULL,
Notes NVARCHAR(1000)
)
INSERT INTO [RentalOrders]([EmployeeId], [CustomerId], [CarId], [TankLevel], [KilometrageStart], [KilometrageEnd], [TotalKilometrage], [StartDate], [EndDate], [TotalDays], [RateApplied], [TaxRate], [OrderStatus])
VALUES
(2, 1, 2, 25, 165000, 168000, 3000, '2-10-2022', '2-20-2022', 10, 1254.37, 20, 0),
(1, 2, 3, 85, 167000, 175000, 4000, '5-10-2022', '5-21-2022', 11, 2534.24, 20, 1),
(3, 3, 1, 25, 1000, 3000, 2000, '12-10-2022', '12-12-2022', 2, 858.22, 20, 0)

