CREATE TABLE [dbo].[jobs]
(
	[job_id] SMALLINT NOT NULL PRIMARY KEY, 
    [job_desc] NCHAR(10) NOT NULL, 
    [min_lvl] TINYINT NOT NULL, 
    [max_lvl] TINYINT NOT NULL, 
    [RowVersion] TIMESTAMP NOT NULL
)
