-- ************************** SqlDBM: Snowflake *************************
-- ************************* Generated by SqlDBM ************************


-- ************************************** EDW.sqldbm_NewFactCurrencyRate
CREATE TABLE EDW.sqldbm_NewFactCurrencyRate
(
 CurrencyKey  number(38,0) NOT NULL COMMENT 'Currency Identifier',
 AverageRate  float,
 CurrencyID   varchar(3) COMMENT 'Currency Identifier',
 CurrencyDate date,
 EndOfDayRate float COMMENT 'The daily closing rate',
 DateKey      number(38,0) COMMENT 'It is the key to join date table',

 CONSTRAINT FK_sqldbm_DimDate_sqldbm_FactInternetSales FOREIGN KEY ( CurrencyKey ) REFERENCES EDW.sqldbm_DimCurrency ( CurrencyKey ),
 CONSTRAINT FK_sqldbm_DimDate_sqldbm_FactInternetSales FOREIGN KEY ( DateKey ) REFERENCES EDW.sqldbm_DimDate ( DateKey )
);