CREATE TABLE [dbo].[FactSales]
(
    [FactSalesKey] BIGINT NOT NULL IDENTITY(1,1) PRIMARY KEY,

    [DateKey] INT NOT NULL,
    [StoreKey] INT NOT NULL,
    [TitleKey] INT NOT NULL,
    [PublisherKey] INT NOT NULL,   

    [OrderNumber_DD] VARCHAR(20) NOT NULL,
    [PayTerms_DD] VARCHAR(12) NOT NULL,

    [QuantitySold] SMALLINT NOT NULL, 
    [UnitPrice] MONEY NOT NULL, 
    [TotalSaleAmount] MONEY NOT NULL
);
GO
ALTER TABLE [dbo].[FactSales] ADD CONSTRAINT [FK_FactSales_DimDate]
    FOREIGN KEY ([DateKey]) REFERENCES [dbo].[DimDate]([DateKey]);
GO
ALTER TABLE [dbo].[FactSales] ADD CONSTRAINT [FK_FactSales_DimStore]
    FOREIGN KEY ([StoreKey]) REFERENCES [dbo].[DimStore]([StoreKey]);
GO
ALTER TABLE [dbo].[FactSales] ADD CONSTRAINT [FK_FactSales_DimTitle]
    FOREIGN KEY ([TitleKey]) REFERENCES [dbo].[DimTitle]([TitleKey]);
GO
ALTER TABLE [dbo].[FactSales] ADD CONSTRAINT [FK_FactSales_DimPublisher]
    FOREIGN KEY ([PublisherKey]) REFERENCES [dbo].[DimPublisher]([PublisherKey]);
    GO