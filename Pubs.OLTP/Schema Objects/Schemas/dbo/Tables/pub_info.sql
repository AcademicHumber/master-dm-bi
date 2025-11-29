CREATE TABLE [dbo].[pub_info]
(
	[pub_id] CHAR(4) NOT NULL PRIMARY KEY, 
    [logo] IMAGE NULL, 
    [pr_info] TEXT NULL, 
    [RowVersion] TIMESTAMP NOT NULL,

    CONSTRAINT FK_pub_info_pub_id FOREIGN KEY ([pub_id]) REFERENCES [dbo].[publishers] ([pub_id])
)
