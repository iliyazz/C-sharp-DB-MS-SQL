--11. All Volunteers in a Department
GO
CREATE FUNCTION udf_GetVolunteersCountFromADepartment (@VolunteersDepartment VARCHAR(30))
RETURNS INT
AS
BEGIN
DECLARE @volunteersCount INT = (
                                   SELECT COUNT(vd.Id)
                                     FROM Volunteers AS v
                                     JOIN VolunteersDepartments AS vd ON vd.Id = v.DepartmentId
                                 GROUP BY vd.DepartmentName
                                   HAVING vd.DepartmentName = @VolunteersDepartment
                                 )
RETURN ISNULL(@volunteersCount, 0)
END
GO
--SELECT dbo.udf_GetVolunteersCountFromADepartment ('Education program assistant')
--SELECT dbo.udf_GetVolunteersCountFromADepartment ('Guest engagement')
--SELECT dbo.udf_GetVolunteersCountFromADepartment ('Zoo events')
