CREATE PROCEDURE [dbo].[GetAuthorsChangeByRowVersion]
(
	@startRow BIGINT,
	@endRow   BIGINT
)
AS
BEGIN
    SET NOCOUNT ON;

    SELECT a.[au_id]
          ,a.[au_lname]
          ,a.[au_fname]
          ,a.[phone]
          ,a.[address]
          ,a.[city]
          ,a.[state]
          ,a.[zip]
          ,a.[contract]
		  ,a.[RowVersion]
    FROM [dbo].[authors] AS a
    WHERE a.[RowVersion] >  CONVERT(rowversion, @startRow)
      AND a.[RowVersion] <= CONVERT(rowversion, @endRow);
END
GO
