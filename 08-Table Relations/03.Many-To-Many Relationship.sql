--08.Table Relations
--03.Many-To-Many Relationship
CREATE TABLE Students(
StudentID INT PRIMARY KEY IDENTITY(1,1),
[Name] VARCHAR(50)
)

INSERT INTO Students([Name])
VALUES
('Mila'),
('Toni'),
('Ron')

CREATE TABLE Exams(
ExamID INT PRIMARY KEY IDENTITY(101, 1),
[Name] VARCHAR(50)
)

INSERT INTO Exams([Name])
VALUES
('SpringMVC'),
('Neo4j'),
('Oracle 11g')

CREATE TABLE StudentsExams(
StudentID INT,
ExamID INT,
CONSTRAINT PK_StudentsExams PRIMARY KEY(StudentID, ExamID),
CONSTRAINT FK_StudentsExams_Students FOREIGN KEY(StudentID) REFERENCES Students(StudentID),
CONSTRAINT FK__StudentsExams_Exams FOREIGN KEY(ExamID) REFERENCES Exams(ExamID)
)
