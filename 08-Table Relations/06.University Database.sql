--08.Table Relations
--06.University Database
-- CREATE DATABASE Relations8_6
-- GO
-- USE Relations8_6
-- GO

CREATE TABLE Majors(
MajorID INT PRIMARY KEY IDENTITY(1, 1),
[Name] VARCHAR(50)
)

CREATE TABLE Students(
StudentID INT PRIMARY KEY IDENTITY(1, 1),
StudentNumber INT,
StudentName VARCHAR(50),
MajorID INT
)

ALTER TABLE Students
ADD CONSTRAINT FK_Majors_Students FOREIGN KEY (MajorID) REFERENCES Majors(MajorID)

CREATE TABLE Payments(
PaymentID INT PRIMARY KEY IDENTITY(1, 1),
PaymentDate DATETIME2,
PaymentAmount DECIMAL(8, 2),
StudentID INT
)

ALTER TABLE Payments
ADD CONSTRAINT FK_Payments_Students FOREIGN KEY (StudentID) REFERENCES Students(StudentID)

CREATE TABLE Subjects(
SubjectID INT PRIMARY KEY IDENTITY(1, 1),
SubjectName VARCHAR(50)
)

CREATE TABLE Agenda(
StudentID INT,
SubjectID INT,
CONSTRAINT PK_Agenda PRIMARY KEY (StudentID, SubjectID),
CONSTRAINT FK_PK_AgendaStudents FOREIGN KEY (StudentID) REFERENCES Students(StudentID),
CONSTRAINT FK_PK_AgendaSubjects FOREIGN KEY (SubjectID) REFERENCES Subjects(SubjectID)
)


















--07.Table Relations
--USE Geography
----JOIN
--SELECT 
--	m.MountainRange
--	, p.PeakName
--	, p.Elevation
--FROM Mountains AS m
--JOIN Peaks AS p ON p.MountainId = m.Id
--WHERE
--	m.MountainRange = 'Rila'
--ORDER BY
--	p.Elevation DESC

--------------------- THE SAME
--SELECT 
--	m.MountainRange
--	, p.PeakName
--	, p.Elevation
--FROM Mountains AS m
--JOIN Peaks AS p ON p.MountainId = m.Id AND m.MountainRange = 'Rila'
--ORDER BY
--	p.Elevation DESC
---------------------------
--SELECT m.MountainRange, p.PeakName, p.Elevation, c.CountryName 
--  FROM Mountains AS m  
--  JOIN Peaks AS p ON  p.MountainId = m.Id 
--  JOIN MountainsCountries AS mc ON m.Id = mc.MountainId
--  JOIN Countries AS c ON mc.CountryCode = c.CountryCode
-- WHERE m.MountainRange = 'Rila'
-- ORDER BY p.Elevation DESC







