CREATE TABLE [dbo].[titles]
(
	[title_id] INT NOT NULL PRIMARY KEY, 
    [title] VARCHAR(80) NULL, 
    [type] CHAR(12) NULL, 
    [pub_id] CHAR(4) NULL, 
    [price] MONEY NULL, 
    [advance] MONEY NULL, 
    [royalty] INT NULL, 
    [ytd_sales] INT NULL, 
    [notes] VARCHAR(200) NULL, 
    [pubdate] DATETIME NULL, 
    [RowVersion] TIMESTAMP NULL
)
