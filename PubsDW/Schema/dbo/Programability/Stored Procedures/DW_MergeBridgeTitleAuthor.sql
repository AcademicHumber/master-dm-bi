CREATE PROCEDURE [dbo].[DW_MergeBridgeTitleAuthor]
AS
BEGIN
    SET NOCOUNT ON;

    UPDATE bta
    SET bta.AuthorOrder      = sta.au_ord,
        bta.RoyaltyPercentage  = sta.royaltyper
    FROM [dbo].[BridgeTitleAuthor] bta

    INNER JOIN DimAuthor da
        ON bta.Author_SK = da.Author_SK

    INNER JOIN [staging].[titleauthor] sta
        ON da.au_id = sta.au_id
       AND bta.title_sk = (
            SELECT dt.title_sk 
            FROM [dbo].[DimTitle] dt
            WHERE dt.title_id = sta.title_id
       );
END
GO