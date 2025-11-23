CREATE TABLE [staging].[titles]
(
	[TitleKey] INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
    [Title] VARCHAR(80) NULL,
    [TitleType] CHAR(12) NULL,
    [Price] MONEY NULL,
    [Advance] MONEY NULL,
    [Royalty] INT NULL,
    [YTDSales] INT NULL,
    [Notes] VARCHAR(200) NULL,
    [PublicationDate] DATETIME NULL
)
