-- **************************** SqlDBM: Snowflake ***************************
-- * Generated by SqlDBM: Awesome Project by daniel.jimenez+team@sqldbm.com *


-- ************************************** HOTELBNB.DimProduct
CREATE TABLE HOTELBNB.DimProduct
(
 ProductKey            number(38,0) NOT NULL AUTOINCREMENT START 1 INCREMENT 1 COMMENT 'Product identifier',
 ProductAlternateKey   varchar(25) COMMENT 'Alternate key of Product identifier',
 ProductSubcategoryKey number(38,0) COMMENT 'Product Subcategory identifier',
 WeightUnitMeasureCode varchar(3) COMMENT 'The weight unit measure code',
 SizeUnitMeasureCode   varchar(3) COMMENT 'The size unit measure code',
 EnglishProductName    varchar(50) NOT NULL COMMENT 'Product name in English',
 SpanishProductName    varchar(50) COMMENT 'Product name in Spanish',
 FrenchProductName     varchar(50) COMMENT 'Product name in French',
 StandardCost          number(38,0) WITH TAG (EDW.cost_center = 'val_2') COMMENT 'Standard cost amount',
 FinishedGoodsFlag     number(38,0) NOT NULL,
 SafetyStockLevel      number(38,0),
 ReorderPoint          number(38,0),
 ListPrice             number(38,0) COMMENT 'List of the price of the selected product',
 Size                  varchar(50) COMMENT 'Product size',
 SizeRange             varchar(50) COMMENT 'Range of the size',
 Weight                float COMMENT 'Product weight',
 DaysToManufacture     number(38,0),
 ProductLine           varchar(2) COMMENT 'Where the product is provided',
 DealerPrice           number(38,0),
 Class                 varchar(2) COMMENT 'Product class',
 Style                 varchar(2) COMMENT 'Product style',
 ModelName             varchar(50) COMMENT 'Product model name',
 EnglishDescription    varchar(400) COMMENT 'Description in English',
 FrenchDescription     varchar(400) COMMENT 'Description in French',
 ChineseDescription    varchar(400) COMMENT 'Description in Chinese',
 ArabicDescription     varchar(400) COMMENT 'Description in Arabic',
 HebrewDescription     varchar(400) COMMENT 'Description in Hebrew',
 ThaiDescription       varchar(400) COMMENT 'Description in Thai',
 GermanDescription     varchar(400) COMMENT 'Description in German',
 JapaneseDescription   varchar(400) COMMENT 'Description in Japanese',
 TurkishDescription    varchar(400) COMMENT 'Description in Turkish',
 Status                varchar(7) COMMENT 'Product status',

 CONSTRAINT PK_DimProduct_sqldbm_copy_1_DimProduct PRIMARY KEY ( ProductKey ),
 CONSTRAINT AK_3 UNIQUE ( ProductAlternateKey ),
 CONSTRAINT FK_DimProductSubcategory_DimProduct FOREIGN KEY ( ProductSubcategoryKey ) REFERENCES HOTELBNB.DimProductSubcategory ( ProductSubcategoryKey )
) WITH TAG (TAG_SCHEMA.Medallion = 'Gold')
COMMENT = 'product table';
