CREATE TABLE [dbo].[FactSales]
(
    [FactSalesKey] BIGINT NOT NULL IDENTITY(1,1) PRIMARY KEY,

    [DateKey] INT NOT NULL,
    [StoreKey] INT NOT NULL,
    [TitleKey] INT NOT NULL,
    [PublisherKey] INT NOT NULL,

    [QuantitySold] SMALLINT NOT NULL, 
    [UnitPrice] MONEY NOT NULL, 
    [TotalSaleAmount] MONEY NOT NULL,
    CONSTRAINT [FK_FactSales_DimDate] FOREIGN KEY ([DateKey]) REFERENCES [dbo].[DimDate]([DateKey]),
    CONSTRAINT [FK_FactSales_DimStore] FOREIGN KEY ([StoreKey]) REFERENCES [dbo].[DimStore]([StoreKey]),
    CONSTRAINT [FK_FactSales_DimTitle] FOREIGN KEY ([TitleKey]) REFERENCES [dbo].[DimTitle]([TitleKey]),
    CONSTRAINT [FK_FactSales_DimPublisher] FOREIGN KEY ([PublisherKey]) REFERENCES [dbo].[DimPublisher]([PublisherKey]),
);
GO