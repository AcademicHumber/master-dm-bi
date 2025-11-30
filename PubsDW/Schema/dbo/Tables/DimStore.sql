CREATE TABLE [dbo].[DimStore]
(
    Store_SK INT IDENTITY(1,1) NOT NULL PRIMARY KEY,
    Store_ID CHAR(4) NOT NULL,
    StoreName VARCHAR(255) NOT NULL,
    Address VARCHAR(255),
    City VARCHAR(100),
    State VARCHAR(50),
    Zip VARCHAR(20)
);
GO