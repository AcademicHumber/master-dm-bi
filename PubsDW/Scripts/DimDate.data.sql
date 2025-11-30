IF NOT EXISTS(SELECT TOP(1) 1
              FROM [dbo].[DimDate])
BEGIN
    BEGIN TRAN;

    DECLARE @startdate DATE = '1987-01-01',
            @enddate   DATE = '2030-01-01';

    DECLARE @datelist TABLE(FullDate DATE);

    WHILE (@startdate <= @enddate)
    BEGIN 
        INSERT INTO @datelist(FullDate)
        VALUES (@startdate);

        SET @startdate = DATEADD(DAY, 1, @startdate);
    END

    INSERT INTO dbo.DimDate (
        Date_SK,
        FullDate,
        Day,
        Month,
        Year,
        Quarter,
        DayOfWeek,
        MonthName,
        DayName
    )
    SELECT 
        Date_SK     = CONVERT(INT, CONVERT(VARCHAR, dl.FullDate, 112)),
        FullDate    = dl.FullDate,
        Day         = DATEPART(DAY, dl.FullDate),
        Month       = DATEPART(MONTH, dl.FullDate),
        Year        = DATEPART(YEAR, dl.FullDate),
        Quarter     = DATEPART(QUARTER, dl.FullDate),
        DayOfWeek   = DATEPART(WEEKDAY, dl.FullDate),
        MonthName   = DATENAME(MONTH, dl.FullDate),
        DayName     = DATENAME(WEEKDAY, dl.FullDate)
    FROM @datelist dl
    LEFT JOIN dbo.DimDate dd ON dl.FullDate = dd.FullDate
    WHERE dd.FullDate IS NULL;

    COMMIT TRAN;
END
GO
