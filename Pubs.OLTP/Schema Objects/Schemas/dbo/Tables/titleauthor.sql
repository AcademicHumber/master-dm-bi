CREATE TABLE [dbo].[titleauthor]
(
	[au_id] INT NOT NULL PRIMARY KEY, 
    [title_id] NCHAR(10) NOT NULL PRIMARY KEY, 
    [au_ord] TINYINT NULL, 
    [royaltyper] INT NULL, 
    [RowVersion] TIMESTAMP NOT NULL
)
