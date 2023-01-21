--10-Exercise Built-in Functions
--01.Find Names of All Employees by First Name
SELECT
       FirstName
	 , LastName
  FROM Employees
 WHERE FirstName LIKE 'Sa%'
