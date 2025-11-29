CREATE TABLE [staging].[titles]
(
	[title_id] VARCHAR(6) NOT NULL, 
    [title] VARCHAR(80) NULL, 
    [type] CHAR(12) NULL, 
    [pub_id] CHAR(4) NULL, 
    [price] MONEY NULL, 
    [notes] VARCHAR(200) NULL, 
    [pubdate] DATETIME NULL, 
)
