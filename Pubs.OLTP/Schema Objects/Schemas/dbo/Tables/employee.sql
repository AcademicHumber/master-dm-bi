CREATE TABLE [dbo].[employee]
(
	[emp_id] INT NOT NULL PRIMARY KEY, 
    [fname] VARCHAR(20) NOT NULL, 
    [minit] CHAR NULL, 
    [lname] VARCHAR(30) NOT NULL, 
    [job_id] SMALLINT NOT NULL, 
    [job_lvl] TINYINT NULL, 
    [pub_id] CHAR(4) NOT NULL, 
    [hire_date] DATETIME NOT NULL, 
    [RowVersion] TIMESTAMP NOT NULL
)
