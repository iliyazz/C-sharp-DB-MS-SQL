--05. Commits
  SELECT c.Id
       , c.[Message]
       , c.RepositoryId
       , c.ContributorId
    FROM Commits AS c
ORDER BY c.Id ASC, 
         c.[Message] ASC,
         c.RepositoryId ASC, 
         c.ContributorId ASC
