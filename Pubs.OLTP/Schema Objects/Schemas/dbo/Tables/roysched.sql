CREATE TABLE [dbo].[roysched]
(
	[title_id] VARCHAR(6) NOT NULL, 
    [lorange] INT NULL, 
    [hirange] INT NULL, 
    [royalty] INT NULL, 
    [RowVersion] TIMESTAMP NOT NULL,

    CONSTRAINT FK_roysched_title_id FOREIGN KEY (title_id) REFERENCES titles(title_id)
)
