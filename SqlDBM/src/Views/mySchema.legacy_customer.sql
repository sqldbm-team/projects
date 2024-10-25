-- ************************* SqlDBM: Databricks *************************
-- ***** Generated by SqlDBM: Databricks Demo by hzlsener@gmail.com *****

-- ************************************** mySchema.legacy_customerCREATE VIEW myDb.mySchema.legacy_customer
    (custkey COMMENT 'Unique identification number', 
	 name
	)
    COMMENT 'View for legacy customers with over 5 years of loyalty'
    AS SELECT custkey, name
         FROM myDb.mySchema.customer
        WHERE active_years >= 5;
