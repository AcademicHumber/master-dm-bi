CREATE TABLE [dbo].[discounts]
(
	[discounttype] VARCHAR(40) NOT NULL, 
    [stor_id] CHAR(4) NULL, 
    [lowqty] SMALLINT NULL, 
    [highqty] SMALLINT NULL, 
    [discount] DECIMAL(4, 2) NOT NULL, 
    [RowVersion] TIMESTAMP NOT NULL
)
