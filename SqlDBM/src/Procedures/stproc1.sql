-- ************************** SqlDBM: Snowflake *************************
-- ************************* Generated by SqlDBM ************************


-- ************************************** stproc1
CREATE OR REPLACE PROCEDURE stproc1(FLOAT_PARAM1 FLOAT)
    returns string
    language javascript
    strict
    as
    $$
    return FLOAT_PARAM1;
    $$
    ;
