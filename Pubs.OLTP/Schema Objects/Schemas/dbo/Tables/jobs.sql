CREATE TABLE [dbo].[jobs]
(
	[job_id] SMALLINT NOT NULL PRIMARY KEY, 
    [job_desc] NCHAR(10) NOT NULL DEFAULT 'New Position - title not formalized yet', 
    [min_lvl] TINYINT NOT NULL, 
    [max_lvl] TINYINT NOT NULL, 
    [RowVersion] TIMESTAMP NOT NULL,

    CONSTRAINT CK_max_lvl CHECK (max_lvl <= 250),
    CONSTRAINT CK_min_lvl CHECK (min_lvl >= 10)
)
