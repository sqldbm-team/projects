-- ************************** SqlDBM: Snowflake *************************
-- ************************* Generated by SqlDBM ************************


-- ************************************** "ADVENTUREWORKSDW.EDW".sqldbm_FactCurrencyRate
CREATE TABLE "ADVENTUREWORKSDW.EDW".sqldbm_FactCurrencyRate
(
 CurrencyKey  number(38,0) NOT NULL COMMENT 'Currency Identifier',
 DateKey      number(38,0) NOT NULL COMMENT 'It is the key to join date table',
 AverageRate  float NOT NULL COMMENT 'Average currency rate',
 EndOfDayRate float NOT NULL COMMENT 'The daily closing rate',

 CONSTRAINT "FK_${ParentTableName}_${TableName}" FOREIGN KEY ( CurrencyKey ) REFERENCES "ADVENTUREWORKSDW.EDW".sqldbm_DimCurrency ( CurrencyKey ),
 CONSTRAINT "FK_${ParentTableName}_${TableName}" FOREIGN KEY ( DateKey ) REFERENCES "ADVENTUREWORKSDW.EDW".sqldbm_DimDate ( DateKey )
);
