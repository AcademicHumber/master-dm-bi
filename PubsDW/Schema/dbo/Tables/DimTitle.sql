CREATE TABLE [dbo].[DimTitle]
(
    [TitleKey] INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
    [TitleID_NK] VARCHAR(6) NOT NULL,
    [Title] VARCHAR(80) NULL,
    [TitleType] CHAR(12) NULL,
    [Price] MONEY NULL,
    [Advance] MONEY NULL,
    [Royalty] INT NULL,
    [YTDSales] INT NULL,
    [Notes] VARCHAR(200) NULL,
    [PublicationDate] DATETIME NULL
);
GO