CREATE TABLE [dbo].[publishers]
(
	[pub_id] CHAR(4) NOT NULL PRIMARY KEY, 
    [pub_name] VARCHAR(40) NULL, 
    [city] VARCHAR(20) NULL, 
    [state] CHAR(2) NULL, 
    [country] VARCHAR(30) NULL, 
    [RowVersion] TIMESTAMP NOT NULL
)
