-- ************************* SqlDBM: Databricks *************************
-- ************************* Generated by SqlDBM ************************



-- ************************************** edw.vip_customer

CREATE TABLE edw.vip_customer
(
 custkey    bigint NOT NULL COMMENT 'Customer identifier',
 vip_points int NOT NULL
)
USING DELTA
 /* The 'delta.columnMapping.mode' property is added by default to make the alter script work correctly */
 TBLPROPERTIES (delta.checkpoint.writeStatsAsJson = false, delta.checkpoint.writeStatsAsStruct = true, delta.minReaderVersion = 1, delta.minWriterVersion = 2, delta.columnMapping.mode = 'name');
