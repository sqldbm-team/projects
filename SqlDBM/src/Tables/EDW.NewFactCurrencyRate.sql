-- ************************** SqlDBM: Snowflake *************************
-- * Generated by SqlDBM: Ivan's first project by ivan.lopez@sqldbm.com *


-- ************************************** EDW.NewFactCurrencyRate
CREATE TABLE EDW.NewFactCurrencyRate
(
 AverageRate  float,
 CurrencyID   varchar(3),
 CurrencyDate date,
 EndOfDayRate float,
 CurrencyKey  number(38,0),
 DateKey      number(38,0),

 CONSTRAINT FK_NewFactCurrencyRate_469 FOREIGN KEY ( CurrencyKey ) REFERENCES EDW.DimCurrency ( CurrencyKey ),
 CONSTRAINT FK_NewFactCurrencyRate_471 FOREIGN KEY ( DateKey ) REFERENCES EDW.DimDate ( DateKey )
);