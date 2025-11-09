CREATE TABLE [dbo].[sales]
(
	[stor_id] CHAR(4) NOT NULL PRIMARY KEY, 
    [ord_num] VARCHAR(20) NOT NULL PRIMARY KEY, 
    [ord_date] DATETIME NULL, 
    [qty] SMALLINT NOT NULL, 
    [payterms] VARCHAR(12) NOT NULL, 
    [title_id] NCHAR(10) NOT NULL PRIMARY KEY, 
    [RowVersion] TIMESTAMP NOT NULL
)
