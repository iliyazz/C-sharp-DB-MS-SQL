--11. Tourists Count on a Tourist Site
GO
CREATE FUNCTION udf_GetTouristsCountOnATouristSite (@Site VARCHAR(100))
RETURNS INT
AS
BEGIN
DECLARE @touristPerSite  INT = (
        SELECT COUNT(st.TouristId)
        FROM Tourists AS t
        JOIN SitesTourists AS st ON t.Id = st.TouristId
        JOIN Sites AS s ON st.SiteId = s.Id
        GROUP BY s.[Name]
        HAVING s.[Name] = @Site)
 RETURN ISNULL(@touristPerSite, 0)
 END
 GO

-- SELECT dbo.udf_GetTouristsCountOnATouristSite ('Regional History Museum – Vratsa')
-- SELECT dbo.udf_GetTouristsCountOnATouristSite ('Samuil’s Fortress')
-- SELECT dbo.udf_GetTouristsCountOnATouristSite ('Gorge of Erma River')