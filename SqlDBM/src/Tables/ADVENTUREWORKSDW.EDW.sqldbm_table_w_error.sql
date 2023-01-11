-- ************************** SqlDBM: Snowflake *************************
-- ************************* Generated by SqlDBM ************************


-- ************************************** "ADVENTUREWORKSDW.EDW".sqldbm_table_w_error
CREATE TABLE "ADVENTUREWORKSDW.EDW".sqldbm_table_w_error
(
 AccountKey       number(38,0) NOT NULL COMMENT 'Unique Identifier of the Account data from Salesforce',
 forget_data_type  NOT NULL,
 new_column       number(38,0) NOT NULL,

 CONSTRAINT PK_2_sqldbm_table_w_error PRIMARY KEY ( AccountKey ),
 CONSTRAINT FK_sqldbm_DimAccount_sqldbm_table_w_error FOREIGN KEY ( AccountKey ) REFERENCES "ADVENTUREWORKSDW.EDW".sqldbm_DimAccount ( AccountKey )
)
COMMENT = 'The table with an error. Data type is forgotten';
