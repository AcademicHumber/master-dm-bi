CREATE TABLE [dbo].[DimDate]
(
    [DateKey] INT NOT NULL PRIMARY KEY,
    [FullDate] DATE NOT NULL,
    [DayNumberOfWeek] TINYINT NOT NULL,
    [DayNameOfWeek] VARCHAR(10) NOT NULL,
    [DayNumberOfMonth] TINYINT NOT NULL,
    [DayNumberOfYear] SMALLINT NOT NULL,
    [MonthNumberOfYear] TINYINT NOT NULL,
    [MonthName] VARCHAR(10) NOT NULL,
    [CalendarQuarter] TINYINT NOT NULL,
    [CalendarYear] SMALLINT NOT NULL,
    [IsWeekend] BIT NOT NULL
);
GO