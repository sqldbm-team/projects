-- **************************** SqlDBM: Snowflake ***************************
-- * Generated by SqlDBM: Awesome Project by daniel.jimenez+team@sqldbm.com *


-- ************************************** EDW.sqldbm_DimGeography
CREATE TABLE EDW.sqldbm_DimGeography
(
 GeographyKey             number(38,0) NOT NULL AUTOINCREMENT START 1 INCREMENT 1,
 City                     varchar(30),
 StateProvinceCode        varchar(3) COMMENT 'State Province Identifier',
 StateProvinceName        varchar(50) COMMENT 'State Province name',
 CountryRegionCode        varchar(3) COMMENT 'Country region Identifier',
 EnglishCountryRegionName varchar(50) COMMENT 'Country region name in English',
 SpanishCountryRegionName varchar(50) COMMENT 'Country region name  in Spanish',
 FrenchCountryRegionName  varchar(50) COMMENT 'Country region name in French',
 PostalCode               varchar(15),
 SalesTerritoryKey        number(38,0) COMMENT 'SalesTerritory identifier',
 IpAddressLocator         varchar(15) COMMENT 'IP address navigation',

 CONSTRAINT PK_DimGeography_sqldbm_DimGeography PRIMARY KEY ( GeographyKey )
);
