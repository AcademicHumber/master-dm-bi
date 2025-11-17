CREATE TABLE [dbo].[BridgeTitleAuthor]
(
    [TitleKey] INT NOT NULL,
    [AuthorKey] INT NOT NULL,
    [AuthorOrder] TINYINT NULL,
    [RoyaltyPercentage] INT NULL,
    CONSTRAINT [PK_BridgeTitleAuthor] PRIMARY KEY ([TitleKey], [AuthorKey]),
    CONSTRAINT [FK_BridgeTitleAuthor_DimTitle] FOREIGN KEY ([TitleKey]) REFERENCES [dbo].[DimTitle]([TitleKey]),
    CONSTRAINT [FK_BridgeTitleAuthor_DimAuthor] FOREIGN KEY ([AuthorKey]) REFERENCES [dbo].[DimAuthor]([AuthorKey])
);