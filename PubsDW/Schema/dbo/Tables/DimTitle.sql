CREATE TABLE [dbo].[DimTitle]
(
    Title_SK INT IDENTITY(1,1) NOT NULL PRIMARY KEY,
    Title_ID VARCHAR(6) NOT NULL,
    TitleName VARCHAR(255) NOT NULL,
    TitleType VARCHAR(50),
    PublisherID CHAR(4),
    Price DECIMAL(10,2),
    PublicationDate DATE
);
GO