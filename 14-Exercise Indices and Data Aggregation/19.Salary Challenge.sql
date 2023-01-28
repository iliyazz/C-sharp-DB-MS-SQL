--14-Exercise Indices and Data Aggregation
--19.Salary Challenge
--first decision
SELECT TOP (10) [e].[FirstName] 
              , [e].[LastName]
              , [e].[DepartmentID]
           FROM [Employees] AS [e]
          WHERE [e].[Salary] > (
                                  SELECT AVG([ee].[Salary]) AS [AVGSalary]
                                    FROM [Employees] AS [ee]
                                   WHERE [ee].[DepartmentID] = [e].[DepartmentID]
                                GROUP BY [ee].[DepartmentID]
                                )
          ORDER BY [e].[DepartmentID]

--second decision
SELECT
 TOP (10)
       [ee].[FirstName]
     , [ee].[LastName]
     , [ee].[DepartmentID]
FROM
       (
          SELECT [e].[DepartmentID]
               , AVG([e].[Salary]) AS [AVGSalary]
            FROM [Employees] AS [e]
        GROUP BY [e].[DepartmentID]
       ) AS [AverageSalary]
	   RIGHT JOIN [Employees] AS [ee] ON [ee].[DepartmentID] = [AverageSalary].DepartmentID
	   WHERE [ee].[Salary] > [AverageSalary].[AVGSalary]
	   ORDER BY [ee].[DepartmentID] ASC
