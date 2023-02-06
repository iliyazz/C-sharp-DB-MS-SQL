--12. Animals with Owner or Not 
CREATE /*OR ALTER*/ PROC usp_AnimalsWithOwnersOrNot(@AnimalName VARCHAR(30))
AS
BEGIN
	SELECT a.[Name]
	     , ISNULL(o.[Name], 'For adoption') AS OwnersName
	  FROM Animals AS a
	  LEFT JOIN Owners AS o ON a.OwnerId = o.Id
	 WHERE a.[Name] = @AnimalName
END

--EXEC usp_AnimalsWithOwnersOrNot 'Pumpkinseed Sunfish'
--EXEC usp_AnimalsWithOwnersOrNot 'Hippo'
--EXEC usp_AnimalsWithOwnersOrNot 'Brown bear'
	
	