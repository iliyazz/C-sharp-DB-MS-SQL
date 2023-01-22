--12-Exercise Subqueries and Joins
--02.Addresses with Towns
SELECT TOP (50)
       e.FirstName
     , e.LastName
     , t.[Name] AS Town
     , a.AddressText
  FROM Towns AS t
  JOIN Addresses AS a ON a.TownID = t.TownID
  JOIN Employees AS e ON e.AddressID = a.AddressID
 ORDER BY
       e.FirstName ASC,
       e.LastName