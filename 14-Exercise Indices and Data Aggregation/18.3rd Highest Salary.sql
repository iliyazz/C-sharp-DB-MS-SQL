--14-Exercise Indices and Data Aggregation
--18.*3rd Highest Salary
--first decision
  SELECT [ranking].[DepartmentID]
       , [ranking].[Salary] AS [ThirdHighestSalary]
   FROM(
         SELECT [e].[DepartmentID]
              , DENSE_RANK() OVER (PARTITION BY [e].[DepartmentID]ORDER BY   [e].[Salary] DESC) AS [dsrank]
              , [e].[Salary]
           FROM [Employees] AS [e]) AS [ranking]
          WHERE [dsrank] = 3
GROUP BY [ranking].DepartmentID, [ranking].[Salary]	  		  

--second decision
SELECT DISTINCT DepartmentID
     , Salary
 FROM (
       SELECT e.DepartmentID
            , e.Salary
            ,  DENSE_RANK() OVER (PARTITION BY e.DepartmentID ORDER BY e.Salary DESC) AS SalaryRank
         FROM Employees AS e
         ) AS SalaryRankingSubquery
WHERE SalaryRank = 3