--10-Exercise Built-in Functions
--16.Get Users with IP Address Like Pattern
  SELECT
         Username
       , IpAddress
    FROM Users
   WHERE IpAddress LIKE '___.1%.%.___'
ORDER BY Username