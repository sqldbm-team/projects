-- ************************** SqlDBM: Snowflake *************************
-- * Generated by SqlDBM: Ivan's first project by ivan.lopez@sqldbm.com *


-- ************************************** EDW.ChildDemo_Test
CREATE TABLE EDW.ChildDemo_Test
(
 ChildDemo_TestId       number(38,0) NOT NULL,
 CreatedBy              varchar(50) NOT NULL,
 CreatedDate            timestamp_ntz(9) NOT NULL,
 UpdatedDate            timestamp_ntz(9) NOT NULL,
 UpdatedBy              varchar(50) NOT NULL,
 TestintDBSN_NameChange varchar(50) NOT NULL,
 NewCol                 varchar(50) NOT NULL
);
