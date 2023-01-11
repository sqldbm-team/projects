-- ************************** SqlDBM: Snowflake *************************
-- ************************* Generated by SqlDBM ************************


-- ************************************** "ADVENTUREWORKSDW.EDW".sqldbm_DimAccount
CREATE TABLE "ADVENTUREWORKSDW.EDW".sqldbm_DimAccount
(
 AccountKey                    number(38,0) NOT NULL AUTOINCREMENT START 1 INCREMENT 1 COMMENT 'Unique Identifier of the Account data from Salesforce',
 ParentAccountKey              number(38,0) COMMENT 'Identifier of parent Account',
 AccountCodeAlternateKey       number(38,0) COMMENT 'Alternate key of Account Identifier',
 ParentAccountCodeAlternateKey number(38,0) COMMENT 'Alternate key of Account Identifier',
 AccountDescription            varchar(50) COMMENT 'Account description associated with its key',
 AccountType                   varchar(50) COMMENT 'The type of the Account',
 CustomMembers                 varchar(300) COMMENT 'Member of the account',
 ValueType                     varchar(50) COMMENT 'The value of the Account',
 CustomMemberOptions           varchar(200),

 CONSTRAINT PK_DimAccount_sqldbm_DimAccount PRIMARY KEY ( AccountKey )
)
COMMENT = 'Holds all Account information';
