--08. Customers by Criteria
  SELECT cu.FirstName,
         cu.Age,
         cu.PhoneNumber
    FROM Customers AS cu
    JOIN Countries AS co ON cu.CountryId = co.Id
   WHERE (cu.Age >= 21 AND cu.FirstName LIKE ('%an%')) OR
         (cu.PhoneNumber LIKE ('%38') AND co.[Name] <> 'Greece')
ORDER BY cu.FirstName ASC, cU.Age DESC
