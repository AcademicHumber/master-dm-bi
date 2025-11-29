CREATE PROCEDURE [dbo].[DW_MergeDimStores]
AS
BEGIN
    SET NOCOUNT ON;

    UPDATE ds
    SET ds.StoreName    = ss.stor_name,
        ds.Address      = ss.address,
        ds.city         = ss.city,
        ds.state        = ss.state,
        ds.zip          = ss.zip
    FROM [dbo].[DimStore] ds
    INNER JOIN [staging].[stores] ss
        ON ds.Store_ID = ss.stor_id;
END
GO