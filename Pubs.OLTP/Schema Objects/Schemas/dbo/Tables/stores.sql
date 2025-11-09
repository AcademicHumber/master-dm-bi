CREATE TABLE [dbo].[stores]
(
	[stor_id] CHAR(4) NOT NULL PRIMARY KEY, 
    [stor_name] VARCHAR(40) NULL, 
    [stor_address] VARCHAR(40) NULL, 
    [city] VARCHAR(20) NULL, 
    [state] CHAR(2) NULL, 
    [zip] CHAR(5) NULL, 
    [RowVersion] TIMESTAMP NOT NULL
)
