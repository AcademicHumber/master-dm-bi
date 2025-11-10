CREATE TABLE [dbo].[sales]
(
	[stor_id] CHAR(4) NOT NULL, 
    [ord_num] VARCHAR(20) NOT NULL, 
    [ord_date] DATETIME NOT NULL, 
    [qty] SMALLINT NOT NULL, 
    [payterms] VARCHAR(12) NOT NULL, 
    [title_id] NCHAR(10) NOT NULL, 
    [RowVersion] TIMESTAMP NOT NULL
    CONSTRAINT [PK_sales] PRIMARY KEY
    (
        [stor_id],
        [ord_num],
        [title_id]
    )
)
