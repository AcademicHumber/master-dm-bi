CREATE TABLE [dbo].[employee]
(
	[emp_id] INT NOT NULL PRIMARY KEY, 
    [fname] VARCHAR(20) NOT NULL, 
    [minit] CHAR NULL, 
    [lname] VARCHAR(30) NOT NULL, 
    [job_id] SMALLINT NOT NULL DEFAULT 1, 
    [job_lvl] TINYINT NULL DEFAULT 10, 
    [pub_id] CHAR(4) NOT NULL DEFAULT 9952, 
    [hire_date] DATETIME NOT NULL DEFAULT GETDATE(), 
    [RowVersion] TIMESTAMP NOT NULL,

    CONSTRAINT FK_job_id FOREIGN KEY (job_id) REFERENCES jobs(job_id),
    CONSTRAINT FK_pub_id FOREIGN KEY (pub_id) REFERENCES publishers(pub_id),
    CONSTRAINT CK_emp_id CHECK (([emp_id] like '[A-Z][A-Z][A-Z][1-9][0-9][0-9][0-9][0-9][FM]' OR [emp_id] like '[A-Z]-[A-Z][1-9][0-9][0-9][0-9][0-9][FM]'))
)
