-- ************************** SqlDBM: Snowflake *************************
-- ************************* Generated by SqlDBM ************************


-- ************************************** "ADVENTUREWORKSDW.EDW".sqldbm_DimDate
CREATE TABLE "ADVENTUREWORKSDW.EDW".sqldbm_DimDate
(
 DateKey              number(38,0) NOT NULL,
 FullDateAlternateKey date NOT NULL COMMENT 'Alternate key of the full date',
 DayNumberOfWeek      number(38,0) NOT NULL,
 EnglishDayNameOfWeek varchar(10) NOT NULL COMMENT 'Day name is called in English',
 SpanishDayNameOfWeek varchar(10) NOT NULL COMMENT 'Day name is called in Spanish',
 FrenchDayNameOfWeek  varchar(10) NOT NULL COMMENT 'Day name is called in French',
 DayNumberOfMonth     number(38,0) NOT NULL,
 DayNumberOfYear      number(38,0) NOT NULL,
 WeekNumberOfYear     number(38,0) NOT NULL COMMENT 'The number of the weeks',
 EnglishMonthName     varchar(10) NOT NULL COMMENT 'Month is called in English',
 SpanishMonthName     varchar(10) NOT NULL COMMENT 'Month is called in Spanish',
 FrenchMonthName      varchar(10) NOT NULL COMMENT 'Month is called in French',
 MonthNumberOfYear    number(38,0) NOT NULL COMMENT 'The number of the months',
 CalendarQuarter      number(38,0) NOT NULL COMMENT 'Quarter period of the calendar year',
 CalendarYear         number(38,0) NOT NULL COMMENT 'New Year''s Day of the given calendar system and ends on the day before the following New Year''s Day',
 CalendarSemester     number(38,0) NOT NULL COMMENT 'Semester period of the calendar year',
 FiscalQuarter        number(38,0) NOT NULL COMMENT 'It is a quarter period of time that a company or government uses for accounting purposes',
 FiscalYear           number(38,0) NOT NULL COMMENT 'It is a one-year period of time that a company or government uses for accounting purposes',
 FiscalSemester       number(38,0) NOT NULL COMMENT 'It is a semester period of time that a company or government uses for accounting purposes',

 CONSTRAINT PK_DimDate_sqldbm_DimDate PRIMARY KEY ( DateKey )
)
COMMENT = 'Dimension for Date time';
