--12-Exercise Subqueries and Joins
--01.Employee Address
  SELECT TOP (5)
         e.EmployeeID
       , e.JobTitle
       , e.AddressID
       , a.AddressText
    FROM Employees AS e
    JOIN Addresses AS a ON e.AddressID = a.AddressID
ORDER BY a.AddressID ASC
