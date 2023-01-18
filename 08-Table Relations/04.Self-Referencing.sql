--08.Table Relations
--04.Self-Referencing
CREATE TABLE Teachers(
TeacherID INT PRIMARY KEY IDENTITY(101, 1),
[Name] VARCHAR(50),
ManagerID INT NULL
CONSTRAINT FK_Teachers_Teachers FOREIGN KEY (ManagerID) REFERENCES Teachers(TeacherID)
)

INSERT INTO Teachers([Name], [ManagerID])
VALUES
('John', NULL),
('Maya', 106),
('Silvia', 106),
('Ted', 105),
('Mark', 101),
('Greta', 101)
