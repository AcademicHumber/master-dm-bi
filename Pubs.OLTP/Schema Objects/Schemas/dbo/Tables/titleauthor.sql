CREATE TABLE [dbo].[titleauthor]
(
	[au_id] INT NOT NULL, 
    [title_id] NCHAR(10) NOT NULL, 
    [au_ord] TINYINT NULL, 
    [royaltyper] INT NULL, 
    [RowVersion] TIMESTAMP NOT NULL,
    CONSTRAINT [PK_titleauthor] PRIMARY KEY
    (
        [au_id],
        [title_id]
    )
)
