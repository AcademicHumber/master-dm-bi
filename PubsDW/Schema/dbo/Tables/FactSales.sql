CREATE TABLE [dbo].[FactSales]
(
    [Sales_SK] BIGINT NOT NULL IDENTITY(1,1) PRIMARY KEY,

    -- Foreign keys to DIM tables
    Title_SK INT NOT NULL,
    Store_SK INT NOT NULL,
    Publisher_SK INT NOT NULL,
    Date_SK INT NOT NULL,

    -- Measures
    Quantity INT NOT NULL,
    UnitPrice DECIMAL(10,2) NOT NULL,
    TotalAmount DECIMAL(10,2),

    -- Natural keys for traceability (optional)
    OrderNumber VARCHAR(20),

    FOREIGN KEY (Title_SK) REFERENCES DimTitle(Title_SK),
    FOREIGN KEY (Store_SK) REFERENCES DimStore(Store_SK),
    FOREIGN KEY (Publisher_SK) REFERENCES DimPublisher(Publisher_SK),
    FOREIGN KEY (Date_SK) REFERENCES DimDate(Date_SK)
);
GO