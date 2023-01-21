--10-Exercise Built-in Functions
--08.Create View Employees Hired After 2000 Year
CREATE VIEW [V_EmployeesHiredAfter2000] AS
     SELECT e.FirstName
	      , e.LastName
	   FROM Employees AS e
	  WHERE YEAR(e.HireDate) > 2000