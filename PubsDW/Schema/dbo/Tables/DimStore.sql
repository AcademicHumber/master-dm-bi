CREATE TABLE [dbo].[DimStore]
(
    [StoreKey] INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
    [StoreID_NK] CHAR(4) NOT NULL,
    [StoreName] VARCHAR(40) NULL,
    [StoreAddress] VARCHAR(40) NULL,
    [City] VARCHAR(20) NULL,
    [State] CHAR(2) NULL,
    [Zip] CHAR(5) NULL
);
GO