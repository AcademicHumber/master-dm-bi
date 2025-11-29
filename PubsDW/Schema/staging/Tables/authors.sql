CREATE TABLE [staging].[authors]
(
	[au_id] VARCHAR(11) NOT NULL,
	[au_lname] VARCHAR(40) NOT NULL,
	[au_fname] VARCHAR(20) NOT NULL,
	[phone] CHAR(12) NOT NULL,
	[address] VARCHAR(40) NULL,
	[city] VARCHAR(20) NULL,
	[state] CHAR(2) NULL,
	[zip] CHAR(5) NULL,
)
