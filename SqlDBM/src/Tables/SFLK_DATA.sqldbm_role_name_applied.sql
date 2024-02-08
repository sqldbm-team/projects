-- **************************** SqlDBM: Snowflake ***************************
-- * Generated by SqlDBM: Awesome Project by daniel.jimenez+team@sqldbm.com *


-- ************************************** SFLK_DATA.sqldbm_role_name_applied
CREATE TABLE SFLK_DATA.sqldbm_role_name_applied
(
 GeographyKey_2 number(38,0) NOT NULL,
 ETL_ID         timestamp NOT NULL COMMENT 'Table load date', -- From template: "Template_w_etl"
 ETL_TIMESTAMP  timestamp_ntz NOT NULL COMMENT 'Table load date TIME', -- From template: "Template_w_etl"

 CONSTRAINT PK_1_sqldbm_role_name_applied PRIMARY KEY ( GeographyKey_2 ),
 CONSTRAINT FK_sqldbm_DimGeography_sqldbm_role_name_applied FOREIGN KEY ( GeographyKey_2 ) REFERENCES EDW.sqldbm_DimGeography ( GeographyKey )
);
