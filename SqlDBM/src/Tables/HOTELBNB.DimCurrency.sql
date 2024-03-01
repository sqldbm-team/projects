-- **************************** SqlDBM: Snowflake ***************************
-- * Generated by SqlDBM: Awesome Project by daniel.jimenez+team@sqldbm.com *


-- ************************************** HOTELBNB.DimCurrency
CREATE TABLE HOTELBNB.DimCurrency
(
 CurrencyKey          number(38,0) NOT NULL AUTOINCREMENT START 1 INCREMENT 1 COMMENT 'Currency Identifier',
 CurrencyAlternateKey varchar(3) NOT NULL COMMENT 'Alternate Currency Identifier',
 ProductKey           number(38,0) NOT NULL COMMENT 'Product identifier',
 CurrencyName         varchar(50) NOT NULL COMMENT 'Name of the Currency',

 CONSTRAINT PK_DimCurrency_sqldbm_copy_1_DimCurrency PRIMARY KEY ( CurrencyKey ),
 CONSTRAINT FK_DimProduct_DimCurrency FOREIGN KEY ( ProductKey ) REFERENCES HOTELBNB.DimProduct ( ProductKey )
)
COMMENT = 'Dimension for Currency Data';