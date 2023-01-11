-- ************************** SqlDBM: Snowflake *************************
-- ************************* Generated by SqlDBM ************************


-- ************************************** "ADVENTUREWORKSDW.EDW".sqldbm_DimCustomer
CREATE TABLE "ADVENTUREWORKSDW.EDW".sqldbm_DimCustomer
(
 CustomerKey          number(38,0) NOT NULL AUTOINCREMENT START 1 INCREMENT 1 COMMENT 'Customer Identifier',
 GeographyKey         number(38,0) COMMENT 'Geographic informatio',
 CustomerAlternateKey varchar(15) NOT NULL COMMENT 'Alternate Key',
 Title                varchar(8) COMMENT 'Title of the Customer',
 FirstName            varchar(50) COMMENT 'Name of the customer',
 MiddleName           varchar(50) COMMENT 'Middle name of the customer',
 LastName             varchar(50) COMMENT 'Surname of the customer',
 NameStyle            varchar(5) COMMENT 'Prefered name',
 BirthDate            date COMMENT 'The birtday of the client',
 MaritalStatus        varchar(1) COMMENT 'Married/Single',
 Suffix               varchar(10) COMMENT 'Appendix of the name',
 Gender               varchar(1) COMMENT 'F/M',
 EmailAddress         varchar(50) COMMENT 'e-mail address of the client',
 YearlyIncome         number(38,0) COMMENT 'Brute annual income',
 TotalChildren        number(38,0) COMMENT 'The number of children',
 NumberChildrenAtHome number(38,0) COMMENT 'The number of children who live with that client',
 EnglishEducation     varchar(40) COMMENT 'Yes/No',
 SpanishEducation     varchar(40) COMMENT 'Yes/No',
 FrenchEducation      varchar(40) COMMENT 'Yes/No',
 EnglishOccupation    varchar(100) COMMENT 'Yes/No',
 SpanishOccupation    varchar(100) COMMENT 'Yes/No',
 FrenchOccupation     varchar(100) COMMENT 'Yes/No',
 HouseOwnerFlag       varchar(1) COMMENT 'Yes/No',
 NumberCarsOwned      number(38,0) COMMENT 'The number of the cars that client has',
 AddressLine          varchar(120) COMMENT 'Billing address',
 AddressLine2         varchar(120) COMMENT 'Billing address',
 Phone                varchar(20) COMMENT 'Phone number of the client',
 DateFirstPurchase    date COMMENT 'The first time the client bought the product',
 CommuteDistance      varchar(15),

 CONSTRAINT PK_DimCustomer_sqldbm_DimCustomer PRIMARY KEY ( CustomerKey ),
 CONSTRAINT FK_sqldbm_DimGeography_sqldbm_DimCustomer FOREIGN KEY ( GeographyKey ) REFERENCES "ADVENTUREWORKSDW.EDW".sqldbm_DimGeography ( GeographyKey )
)
COMMENT = 'Dimension for Customer Data';
