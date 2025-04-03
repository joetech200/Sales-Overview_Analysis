--Cleansed DIm_Datetable//
SELECT 
  [DateKey], 
  [FullDateAlternateKey] AS Date, 
  -- [DayNumberOfWeek], 
  [EnglishDayNameOfWeek] AS day --,[SpanishDayNameOfWeek]
  --,[FrenchDayNameOfWeek]
  --,[DayNumberOfMonth]
  --,[DayNumberOfYear]
  , 
  [WeekNumberOfYear]As weekno, 
  [EnglishMonthName] AS month, 
  left([EnglishMonthName], 3) AS Monthshort, 
  -- ,[SpanishMonthName]
  --,[FrenchMonthName], 
  [MonthNumberOfYear] AS Monthno, 
  [CalendarQuarter] AS Quater, 
  [CalendarYear] AS Year
  -- ,[CalendarSemester]
  -- ,[FiscalQuarter]
  -- ,[FiscalYear]
  --,[FiscalSemester]
FROM 
  [AdventureWorksDW2019].[dbo].[DimDate]
WHERE CalendarYear >= 2019

