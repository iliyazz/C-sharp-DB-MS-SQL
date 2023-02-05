--04. Delete
DELETE FROM RepositoriesContributors
 WHERE RepositoryId = (SELECT Id
                         FROM Repositories AS r
                        WHERE r.[Name] = 'Softuni-Teamwork')

DELETE FROM Issues
 WHERE RepositoryId = (SELECT Id
                         FROM Repositories AS r
                        WHERE r.[Name] = 'Softuni-Teamwork')

