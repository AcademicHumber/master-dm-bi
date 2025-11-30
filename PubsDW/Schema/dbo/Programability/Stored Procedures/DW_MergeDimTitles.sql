CREATE PROCEDURE [dbo].[DW_MergeDimTitles]
AS
BEGIN
    SET NOCOUNT ON;

    UPDATE dt
    SET dt.TitleName   = st.title,
        dt.TitleType   = st.type,
        dt.PublisherID = st.pub_id,
        dt.price       = st.price,
        dt.PublicationDate = st.pubdate
    FROM [dbo].[DimTitle] dt
    INNER JOIN [staging].[titles] st
        ON dt.title_id = st.title_id;
END
GO