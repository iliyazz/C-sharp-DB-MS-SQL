--09. Commits in Repositories
   SELECT TOP (5)
          r.Id,
          r.[Name],
          COUNT(c.Id) AS Commits
     FROM Commits AS c
LEFT JOIN Issues AS i ON c.IssueId = I.Id 
LEFT JOIN Repositories AS r ON c.RepositoryId = r.Id
LEFT JOIN RepositoriesContributors AS rc ON RC.RepositoryId = r.Id
LEFT JOIN Users AS u ON u.Id = RC.ContributorId
 GROUP BY r.Id, r.[Name]
 ORDER BY Commits DESC, r.Id, r.[Name]
