--09. Volunteers in Sofia
 SELECT  v.[Name]
       , v.PhoneNumber
       , STUFF(v.[Address], 1, CHARINDEX(',', v.[Address]), '') AS [Address]
    FROM Volunteers AS v
    JOIN VolunteersDepartments AS vd ON v.DepartmentId = vd.Id
   WHERE v.[Address] LIKE ('%Sofia%') AND vd.DepartmentName = 'Education program assistant'
ORDER BY v.[Name] ASC
