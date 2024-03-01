-- **************************** SqlDBM: Snowflake ***************************
-- * Generated by SqlDBM: Awesome Project by daniel.jimenez+team@sqldbm.com *


-- ************************************** EDW.child_DimAccount
CREATE TABLE EDW.child_DimAccount
(
 AccountKey    number(38,0) NOT NULL COMMENT 'Unique Identifier of the Account data from Salesforce',
 ETL_ID        timestamp NOT NULL COMMENT 'Table load date', -- From template: "Template_w_etl"
 ETL_TIMESTAMP timestamp_ntz NOT NULL COMMENT 'Table load date TIME', -- From template: "Template_w_etl"
 AccountType   varchar(50) COMMENT 'The type of the Account',
 CustomMembers varchar(300) COMMENT 'Member of the account',
 ValueType     varchar(50) COMMENT 'The value of the Account',

 CONSTRAINT FK_sqldbm_DimAccount_child_DimAccount FOREIGN KEY ( AccountKey ) REFERENCES EDW.sqldbm_DimAccount ( AccountKey )
);
