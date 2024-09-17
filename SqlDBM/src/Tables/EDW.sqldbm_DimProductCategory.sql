-- *************************** SqlDBM: Snowflake **************************
-- * Generated by SqlDBM: Awesome Project, v133 by hazal.sener@sqldbm.com *


-- ************************************** EDW.sqldbm_DimProductCategory
CREATE TABLE EDW.sqldbm_DimProductCategory
(
 ProductCategoryKey          number(38,0) NOT NULL AUTOINCREMENT START 1 INCREMENT 1 COMMENT 'Product category identifier',
 ProductCategoryAlternateKey number(38,0) COMMENT 'Product category alternate key',
 EnglishProductCategoryName  varchar(50) NOT NULL COMMENT 'Product category name in English',
 SpanishProductCategoryName  varchar(50) NOT NULL COMMENT 'Product category name in Spanish',
 FrenchProductCategoryName   varchar(50) NOT NULL COMMENT 'Product category name in French',

 CONSTRAINT PK_DimProductCategory_sqldbm_DimProductCategory PRIMARY KEY ( ProductCategoryKey )
);
