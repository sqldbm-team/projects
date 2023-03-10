-- ************************** SqlDBM: Snowflake *************************
-- ************************* Generated by SqlDBM ************************


-- ************************************** "ADVENTUREWORKSDW.EDW".sqldbm_FactSalesQuota
CREATE TABLE "ADVENTUREWORKSDW.EDW".sqldbm_FactSalesQuota
(
 SalesQuotaKey    number(38,0) NOT NULL AUTOINCREMENT START 1 INCREMENT 1 COMMENT 'Sales quata identifier',
 EmployeeKey      number(38,0) NOT NULL COMMENT 'Employee Identifier',
 DateKey          number(38,0) NOT NULL COMMENT 'It is the key to join date table',
 CalendarYear     number(38,0) NOT NULL COMMENT 'New Year''s Day of the given calendar system and ends on the day before the following New Year''s Day',
 CalendarQuarter  number(38,0) NOT NULL COMMENT 'Quarter period of the calendar year',
 SalesAmountQuota number(38,0) NOT NULL COMMENT 'Quarterly sales amount',

 CONSTRAINT "FK_${ParentTableName}_${TableName}" FOREIGN KEY ( DateKey ) REFERENCES "ADVENTUREWORKSDW.EDW".sqldbm_DimDate ( DateKey )
);
