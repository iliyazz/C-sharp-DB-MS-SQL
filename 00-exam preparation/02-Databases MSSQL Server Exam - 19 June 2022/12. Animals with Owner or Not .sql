--12. Animals with Owner or Not 
CREATE PROC usp_AnimalsWithOwnersOrNot(@AnimalName VARCHAR(30))
AS
BEGIN
IF (SELECT OwnerId 
	  FROM Animals
	 WHERE [Name] = @AnimalName) IS NULL
	 BEGIN
		SELECT a.[Name]
		     , 'For adoption' AS OwnersName
		  FROM Animals AS a
		 WHERE a.[Name] = @AnimalName
	 END
ELSE
	BEGIN
		SELECT a.[Name]
		     , o.[Name] AS OwnersName
		  FROM Animals AS a
		  JOIN Owners AS o ON a.OwnerId = o.Id
		 WHERE a.[Name] = @AnimalName
	END
END

--EXEC usp_AnimalsWithOwnersOrNot 'Pumpkinseed Sunfish'
--EXEC usp_AnimalsWithOwnersOrNot 'Hippo'
--EXEC usp_AnimalsWithOwnersOrNot 'Brown bear'
	
	