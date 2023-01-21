--10-Exercise Built-in Functions
--02.Find Names of All Employees by Last Name
SELECT
	   FirstName
	 , LastName
  FROM Employees
 WHERE LastName LIKE '%ei%'
