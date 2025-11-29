CREATE TABLE [dbo].[DimDate]
(
    [Date_SK] INT NOT NULL PRIMARY KEY,
    [FullDate] DATE NOT NULL,
    [Day] INT,
    [Month] INT,
    [Year] INT,
    [Quarter] INT,
    [DayOfWeek] INT,
    [MonthName] VARCHAR(20),
    [DayName] VARCHAR(20)
);
GO