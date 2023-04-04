-- ************************* SqlDBM: Databricks *************************
-- ************************* Generated by SqlDBM ************************



-- ************************************** edw.region

CREATE TABLE edw.region
(
 regionkey bigint,
 name      string,
 comment   string
)
USING DELTA
 /* The 'delta.columnMapping.mode' property is added by default to make the alter script work correctly */
 TBLPROPERTIES (delta.checkpoint.writeStatsAsJson = false, delta.checkpoint.writeStatsAsStruct = true, delta.minReaderVersion = 1, delta.minWriterVersion = 2, delta.columnMapping.mode = 'name');
