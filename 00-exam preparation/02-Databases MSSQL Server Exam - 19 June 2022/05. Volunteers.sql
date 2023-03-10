--05. Volunteers---------------------------
  SELECT v.[Name]
       , v.PhoneNumber
       , v.[Address]
       , v.AnimalId
       , v.DepartmentId
    FROM Volunteers AS v
ORDER BY v.[Name] ASC
       , v.AnimalId ASC
       , v.DepartmentId ASC
