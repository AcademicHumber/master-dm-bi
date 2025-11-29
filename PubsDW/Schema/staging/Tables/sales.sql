CREATE TABLE [staging].[sales]
(
	[stor_id] CHAR(4) NOT NULL, 
    [ord_num] VARCHAR(20) NOT NULL, 
    [ord_date] DATETIME NOT NULL, 
    [qty] SMALLINT NOT NULL, 
    [payterms] VARCHAR(12) NOT NULL, 
    [title_id] VARCHAR(6) NOT NULL, 
)
