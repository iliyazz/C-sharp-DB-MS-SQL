--08. Single Files
   SELECT f.Id
        , f.[Name]
        , CONCAT(f.Size, 'KB')
     FROM Files AS f
LEFT JOIN Files AS fk ON f.Id = fk.ParentId
    WHERE fk.Id IS NULL
 ORDER BY f.Id ASC, f.[Name] ASC, f.Size DESC
