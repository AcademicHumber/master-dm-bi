CREATE TABLE [staging].[sales]
(
	[FactSalesKey] BIGINT NOT NULL IDENTITY(1,1) PRIMARY KEY,

    [DateKey] INT NOT NULL,
    [StoreKey] INT NOT NULL,
    [TitleKey] INT NOT NULL,
    [PublisherKey] INT NOT NULL,

    [QuantitySold] SMALLINT NOT NULL, 
    [UnitPrice] MONEY NOT NULL, 
    [TotalSaleAmount] MONEY NOT NULL,
)
