CREATE TABLE [dbo].[titleauthor]
(
	[au_id] VARCHAR(11) NOT NULL, 
    [title_id] VARCHAR(6) NOT NULL, 
    [au_ord] TINYINT NULL, 
    [royaltyper] INT NULL, 
    [RowVersion] TIMESTAMP NOT NULL,
    CONSTRAINT [PK_titleauthor] PRIMARY KEY
    (
        [au_id] ASC,
        [title_id] ASC
    ),
    CONSTRAINT FK_au_id FOREIGN KEY (au_id) REFERENCES authors(au_id),
    CONSTRAINT FK_title_id FOREIGN KEY (title_id) REFERENCES titles(title_id)
)
