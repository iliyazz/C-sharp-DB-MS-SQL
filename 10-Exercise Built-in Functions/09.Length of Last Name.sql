--10-Exercise Built-in Functions
--09.Length of Last Name
SELECT e.FirstName
     , e.LastName
  FROM Employees AS e
 WHERE LEN(e.LastName) = 5