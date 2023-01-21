--10-Exercise Built-in Functions
--15.User Email Providers
  SELECT
         Username
       , RIGHT([Email], LEN([Email]) - CHARINDEX('@', [Email]))  AS [Email Provider]
    FROM Users
ORDER BY [Email Provider], Username
