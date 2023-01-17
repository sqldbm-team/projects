-- ************************** SqlDBM: Snowflake *************************
-- ************************* Generated by SqlDBM ************************


-- ************************************** EDW.sqldbm_ChildDemo
CREATE TABLE EDW.sqldbm_ChildDemo
(
 ScenarioKey number(38,0) NOT NULL COMMENT 'Scenario Identifier',
 CreatedBy   varchar(50) NOT NULL COMMENT 'Date when the scenario created',
 CreatedDate timestamp_ntz(9) NOT NULL COMMENT 'Who Created this Scenario',
 UpdatedDate timestamp_ntz(9) NOT NULL COMMENT 'Date when the scenario updated',
 UpdatedBy   varchar(50) NOT NULL COMMENT 'Who updated this Scenario',

 CONSTRAINT PK_664_sqldbm_ChildDemo PRIMARY KEY ( ScenarioKey ),
 CONSTRAINT FK_sqldbm_DimScenario_sqldbm_ChildDemo FOREIGN KEY ( ScenarioKey ) REFERENCES EDW.sqldbm_DimScenario ( ScenarioKey )
)
COMMENT = 'Child table created by Scenario enitity';
