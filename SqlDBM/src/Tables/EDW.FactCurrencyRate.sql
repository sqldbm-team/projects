-- ************************** SqlDBM: Snowflake *************************
-- * Generated by SqlDBM: Ivan's first project by ivan.lopez@sqldbm.com *


-- ************************************** EDW.FactCurrencyRate
CREATE TABLE EDW.FactCurrencyRate
(
 CurrencyKey  number(38,0) NOT NULL,
 DateKey      number(38,0) NOT NULL,
 AverageRate  float NOT NULL,
 EndOfDayRate float NOT NULL,

 CONSTRAINT FK_FactCurrencyRate_413 FOREIGN KEY ( CurrencyKey ) REFERENCES EDW.DimCurrency ( CurrencyKey ),
 CONSTRAINT FK_FactCurrencyRate_415 FOREIGN KEY ( DateKey ) REFERENCES EDW.DimDate ( DateKey )
);
