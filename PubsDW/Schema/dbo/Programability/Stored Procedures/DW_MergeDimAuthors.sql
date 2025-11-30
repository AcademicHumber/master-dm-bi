CREATE PROCEDURE [dbo].[DW_MergeDimAuthors]
AS
BEGIN
    SET NOCOUNT ON;

    -- Actualiza los datos de DimAuthor desde staging
    UPDATE da
    SET da.au_lname   = sa.au_lname,
        da.au_fname   = sa.au_fname,
        da.phone      = sa.phone,
        da.address    = sa.address,
        da.city       = sa.city,
        da.state      = sa.state,
        da.zip        = sa.zip
    FROM [dbo].[DimAuthor] da
    INNER JOIN staging.authors sa
        ON da.au_id = sa.au_id;
END
GO