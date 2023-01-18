--08.Table Relations
--01.One-To-One Relationship

CREATE TABLE Persons(
PersonID INT NOT NULL,
FirstName VARCHAR(50) NOT NULL,
Salary DECIMAL(8,2) ,
PassportID INT UNIQUE NOT NULL
)

INSERT INTO Persons(PersonID ,FirstName, Salary, PassportID)
VALUES
(1, 'Roberto', 43300.00, 102),
(2, 'Tom', 56100.00, 103),
(3, 'Yana', 60200.00, 101)


CREATE TABLE Passports(
PassportID INT NOT NULL,
PassportNumber VARCHAR(25) NOT NULL,
CONSTRAINT PK_PassportID PRIMARY KEY (PassportID)
)

INSERT INTO Passports(PassportID, PassportNumber)
VALUES
(101, 'N34FG21B'),
(102, 'K65LO4R7'),
(103, 'ZE657QP2')

ALTER TABLE Persons
ADD CONSTRAINT PK_PersonID PRIMARY KEY (PersonID)

ALTER TABLE Persons
ADD CONSTRAINT FK_Persons_Passports FOREIGN KEY (PassportID) REFERENCES Passports(PassportID)
