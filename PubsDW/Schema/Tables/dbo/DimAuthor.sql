CREATE TABLE [dbo].[DimAuthor]
(
    [AuthorKey] INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
    [AuthorID_NK] INT NOT NULL,
    [AuthorFullName] VARCHAR(61) NOT NULL,
    [Phone] CHAR(12) NOT NULL,
    [Address] VARCHAR(40) NULL,
    [City] VARCHAR(20) NULL,
    [State] CHAR(2) NULL,
    [Zip] CHAR(5) NULL,
    [HasContract] BIT NOT NULL
);
GO