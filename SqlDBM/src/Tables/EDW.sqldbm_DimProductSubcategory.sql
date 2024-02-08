-- **************************** SqlDBM: Snowflake ***************************
-- * Generated by SqlDBM: Awesome Project by daniel.jimenez+team@sqldbm.com *


-- ************************************** EDW.sqldbm_DimProductSubcategory
CREATE TABLE EDW.sqldbm_DimProductSubcategory
(
 ProductSubcategoryKey          number(38,0) NOT NULL AUTOINCREMENT START 1 INCREMENT 1 COMMENT 'Product subcategory identifier',
 ProductSubcategoryAlternateKey number(38,0) NOT NULL WITH TAG (TAG_SCHEMA.Issues = 'invalid characters') COMMENT 'Product subcategory alternate key',
 EnglishProductSubcategoryName  varchar(50) NOT NULL COMMENT 'Product subcategory name in English',
 SpanishProductSubcategoryName  varchar(50) NOT NULL COMMENT 'Product category name in Spanish',
 FrenchProductSubcategoryName   varchar(50) NOT NULL COMMENT 'Product category name in French',
 ProductCategoryKey             number(38,0) NOT NULL COMMENT 'Product category identifier',

 CONSTRAINT PK_DimProductSubcategory_sqldbm_DimProductSubcategory PRIMARY KEY ( ProductSubcategoryKey ),
 CONSTRAINT AK_3 UNIQUE ( ProductSubcategoryAlternateKey ),
 CONSTRAINT FK_sqldbm_DimProductCategory_sqldbm_DimProductSubcategory FOREIGN KEY ( ProductCategoryKey ) REFERENCES EDW.sqldbm_DimProductCategory ( ProductCategoryKey )
);
