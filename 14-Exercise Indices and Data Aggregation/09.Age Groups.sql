--14-Exercise Indices and Data Aggregation
--09.Age Groups
  SELECT
         [AgeGroup]
       , COUNT(*) AS WizardCount
    FROM (
         SELECT
                [AGE]
              , CASE
                  WHEN [AGE] <= 10 THEN '[0-10]'
                  WHEN ([AGE] >=11 AND [AGE] <=20) THEN '[11-20]'
                  WHEN ([AGE] >=21 AND [AGE] <=30) THEN '[21-30]'
                  WHEN ([AGE] >=31 AND [AGE] <=40) THEN '[31-40]'
				  WHEN ([AGE] >=41 AND [AGE] <=50) THEN '[41-50]'
                  WHEN ([AGE] >=51 AND [AGE] <=60) THEN '[51-60]'
                  ELSE '[61+]'
                END AS [AgeGroup]
           FROM [WizzardDeposits]
	     ) AS [Groups]
GROUP BY [AgeGroup]

