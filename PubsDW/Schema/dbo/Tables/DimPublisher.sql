CREATE TABLE [dbo].[DimPublisher]
(
    [Publisher_SK] INT IDENTITY(1,1) NOT NULL PRIMARY KEY,
    [Publisher_ID] CHAR(4) NOT NULL,
    [PublisherName] VARCHAR(40) NULL,
    [City] VARCHAR(100) NULL,
    [State] CHAR(2) NULL,
    [Country] VARCHAR(30) NULL
);
GO