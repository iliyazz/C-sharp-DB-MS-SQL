--07. Clients without Cigars
   SELECT c.Id
        , CONCAT_WS(' ', c.FirstName, c.LastName) AS ClientName
        , c.Email
     FROM Clients AS c
LEFT JOIN ClientsCigars AS cc ON c.Id = cc.ClientId
    WHERE ClientId IS NULL
 ORDER BY ClientName ASC







