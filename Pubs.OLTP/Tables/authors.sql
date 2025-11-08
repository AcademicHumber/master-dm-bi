CREATE TABLE [dbo].[authors]
(
	[au_id] INT NOT NULL PRIMARY KEY
	, [au_lname] NVARCHAR(40) NOT NULL
	, [au_fname] NVARCHAR(20) NOT NULL
	, [phone] CHAR(12) NOT NULL
	, [address] NVARCHAR(40)
	, [city] NVARCHAR(20)
	, [state] NVARCHAR(2)
	, [zip] NVARCHAR(10)
	, [contract] BIT NOT NULL
)
