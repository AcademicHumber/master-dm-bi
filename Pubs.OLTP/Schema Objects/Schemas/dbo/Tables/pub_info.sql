CREATE TABLE [dbo].[pub_info]
(
	[pub_id] CHAR(4) NOT NULL PRIMARY KEY, 
    [logo] IMAGE NULL, 
    [pr_info] TEXT NULL, 
    [RowVersion] TIMESTAMP NOT NULL
)
