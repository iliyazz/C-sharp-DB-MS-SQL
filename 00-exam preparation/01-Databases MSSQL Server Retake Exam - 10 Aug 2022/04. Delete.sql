--04. Delete
SELECT *
  FROM TouristsBonusPrizes
DELETE
  FROM TouristsBonusPrizes
 WHERE TouristsBonusPrizes.BonusPrizeId IN 
       (
       SELECT DISTINCT b.Id
         FROM BonusPrizes AS b
         JOIN TouristsBonusPrizes AS t ON b.Id = t.BonusPrizeId
        WHERE b.[Name] = 'Sleeping bag'
       )

 SELECT * 
  FROM BonusPrizes
DELETE 
  FROM BonusPrizes
 WHERE BonusPrizes.[Name] = 'Sleeping bag'
