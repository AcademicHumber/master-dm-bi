CREATE TABLE [staging].[stores]
(
	[StoreKey] INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
    [StoreName] VARCHAR(40) NULL,
    [StoreAddress] VARCHAR(40) NULL,
    [City] VARCHAR(20) NULL,
    [State] CHAR(2) NULL,
    [Zip] CHAR(5) NULL
)
