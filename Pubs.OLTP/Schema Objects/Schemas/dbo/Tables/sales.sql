CREATE TABLE [dbo].[sales]
(
	[stor_id] CHAR(4) NOT NULL, 
    [ord_num] VARCHAR(20) NOT NULL, 
    [ord_date] DATETIME NOT NULL, 
    [qty] SMALLINT NOT NULL, 
    [payterms] VARCHAR(12) NOT NULL, 
    [title_id] VARCHAR(6) NOT NULL, 
    [RowVersion] TIMESTAMP NOT NULL
    
    CONSTRAINT [PK_sales] PRIMARY KEY
    (
        [stor_id] ASC,
        [ord_num] ASC,
        [title_id] ASC
    ),
    CONSTRAINT FK_stor_id FOREIGN KEY (stor_id) REFERENCES stores(stor_id),
    CONSTRAINT FK_sales_title_id FOREIGN KEY (title_id) REFERENCES titles(title_id)
)
