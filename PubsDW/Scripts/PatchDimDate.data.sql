IF NOT EXISTS(SELECT TOP(1) 1
              FROM [dbo].[DimDate]
              WHERE [Date_SK] = 0)
BEGIN

    INSERT INTO [dbo].[DimDate]
           ([Date_SK]
           ,[FullDate]
           ,[Day]
           ,[Month]
           ,[Year]
           ,[Quarter]
           ,[DayOfWeek]
           ,[MonthName]
           ,[DayName])
     VALUES
           (0
           ,GETDATE()
           ,0  -- Day
           ,0  -- Month
           ,0  -- Year
           ,0  -- Quarter
           ,0  -- DayOfWeek
           ,'' -- MonthName
           ,'' -- DayName
           );
END
GO