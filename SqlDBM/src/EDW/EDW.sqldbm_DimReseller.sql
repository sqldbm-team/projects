-- ************************** SqlDBM: Snowflake *************************
-- ************************* Generated by SqlDBM ************************


-- ************************************** EDW.sqldbm_DimReseller
CREATE TABLE EDW.sqldbm_DimReseller
(
 ResellerKey          number(38,0) NOT NULL AUTOINCREMENT START 1 INCREMENT 1 COMMENT 'Reseller identifier',
 GeographyKey         number(38,0) COMMENT 'Geography identifier',
 ResellerAlternateKey varchar(15) COMMENT 'Reseller alternate key',
 Phone                varchar(25) COMMENT 'Phone number',
 NumberEmployees      number(38,0),
 OrderFrequency       varchar(1),
 FirstOrderYear       number(38,0),
 LastOrderYear        number(38,0),
 AddressLine1         varchar(60),
 AddressLine2         varchar(60),
 AnnualSales          number(38,0),
 BankName             varchar(50),
 MinPaymentType       number(38,0),
 MinPaymentAmount     number(38,0),
 AnnualRevenue        number(38,0),
 YearOpened           number(38,0),

 CONSTRAINT PK_DimReseller_sqldbm_DimReseller PRIMARY KEY ( ResellerKey ),
 CONSTRAINT FK_sqldbm_DimGeography_sqldbm_DimReseller FOREIGN KEY ( GeographyKey ) REFERENCES EDW.sqldbm_DimGeography ( GeographyKey )
);
