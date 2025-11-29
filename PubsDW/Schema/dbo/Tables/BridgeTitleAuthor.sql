CREATE TABLE dbo.BridgeTitleAuthor (
    Title_SK INT NOT NULL,
    Author_SK INT NOT NULL,
    AuthorOrder INT,          -- au_ord from titleauthor
    RoyaltyPercentage INT,    -- royaltyper from titleauthor

    PRIMARY KEY (Title_SK, Author_SK),

    FOREIGN KEY (Title_SK) REFERENCES DimTitle(Title_SK),
    FOREIGN KEY (Author_SK) REFERENCES DimAuthor(Author_SK)
);