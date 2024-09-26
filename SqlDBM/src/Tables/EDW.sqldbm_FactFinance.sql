-- **************************** SqlDBM: Snowflake ***************************
-- * Generated by SqlDBM: Awesome Project by daniel.jimenez+team@sqldbm.com *


-- ************************************** EDW.sqldbm_FactFinance
CREATE TABLE EDW.sqldbm_FactFinance
(
 OrganizationKey    number(38,0) NOT NULL COMMENT 'Organizarion identifier',
 FinanceKey         number(38,0) NOT NULL AUTOINCREMENT START 1 INCREMENT 1 COMMENT 'Finance identifier',
 DateKey            number(38,0) NOT NULL COMMENT 'It is the key to join date table',
 DepartmentGroupKey number(38,0) NOT NULL COMMENT 'Department group identifier',
 ScenarioKey        number(38,0) NOT NULL COMMENT 'Scenario Identifier',
 AccountKey         number(38,0) NOT NULL COMMENT 'Account Identifier',
 Amount             float NOT NULL COMMENT 'Amount in Eur',

 CONSTRAINT FK_sqldbm_DimDate_sqldbm_FactInternetSales FOREIGN KEY ( DateKey ) REFERENCES EDW.sqldbm_DimDate ( DateKey ),
 CONSTRAINT FK_sqldbm_DimDate_sqldbm_FactInternetSales FOREIGN KEY ( OrganizationKey ) REFERENCES EDW.sqldbm_DimOrganization ( OrganizationKey ),
 CONSTRAINT FK_sqldbm_DimDate_sqldbm_FactInternetSales FOREIGN KEY ( DepartmentGroupKey ) REFERENCES EDW.sqldbm_DimDepartmentGroup ( DepartmentGroupKey ),
 CONSTRAINT FK_sqldbm_DimDate_sqldbm_FactInternetSales FOREIGN KEY ( ScenarioKey ) REFERENCES EDW.sqldbm_DimScenario ( ScenarioKey ),
 CONSTRAINT FK_sqldbm_DimDate_sqldbm_FactInternetSales FOREIGN KEY ( AccountKey ) REFERENCES EDW.sqldbm_DimAccount ( AccountKey )
) WITH TAG (EDW.cost_center = 'val_2')
COMMENT = 'Facts for Finance';
