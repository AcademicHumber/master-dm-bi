CREATE TABLE [staging].[publishers]
(
	[PublisherKey] INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
    [PublisherName] VARCHAR(40) NULL,
    [City] VARCHAR(20) NULL,
    [State] CHAR(2) NULL,
    [Country] VARCHAR(30) NULL,
    [PublisherInfo] TEXT NULL
)
