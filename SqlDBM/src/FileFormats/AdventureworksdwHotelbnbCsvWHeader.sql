-- ************************** SqlDBM: Snowflake *************************
-- *** Generated by SqlDBM: AdWorks project, v954 by serge@sqldbm.com ***


CREATE OR REPLACE FILE FORMAT AdventureworksdwHotelbnbCsvWHeader
 TYPE = CSV
 SKIP_HEADER = 1
 ESCAPE = '|'
 ESCAPE_UNENCLOSED_FIELD = '|'
 FIELD_OPTIONALLY_ENCLOSED_BY = '\"';
