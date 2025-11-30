CREATE PROCEDURE [dbo].[DW_MergeDimPublishers]
AS
BEGIN
    SET NOCOUNT ON;

    UPDATE dp
    SET dp.PublisherName    = sp.pub_name,
        dp.city             = sp.city,
        dp.state            = sp.state,
        dp.country          = sp.country
    FROM [dbo].[DimPublisher] dp
    INNER JOIN [staging].[publishers] sp
        ON dp.Publisher_ID = sp.pub_id;
END
GO