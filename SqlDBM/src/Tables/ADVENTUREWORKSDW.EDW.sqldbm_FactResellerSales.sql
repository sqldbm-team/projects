-- ************************** SqlDBM: Snowflake *************************
-- ************************* Generated by SqlDBM ************************


-- ************************************** "ADVENTUREWORKSDW.EDW".sqldbm_FactResellerSales
CREATE TABLE "ADVENTUREWORKSDW.EDW".sqldbm_FactResellerSales
(
 ProductKey            number(38,0) NOT NULL,
 OrderDateKey          number(38,0) NOT NULL,
 DueDateKey            number(38,0) NOT NULL,
 ShipDateKey           number(38,0) NOT NULL,
 ResellerKey           number(38,0) NOT NULL,
 EmployeeKey           number(38,0) NOT NULL,
 PromotionKey          number(38,0) NOT NULL,
 CurrencyKey           number(38,0) NOT NULL,
 SalesTerritoryKey     number(38,0) NOT NULL,
 SalesOrderNumber      varchar(20) NOT NULL,
 SalesOrderLineNumber  number(38,0) NOT NULL,
 RevisionNumber        number(38,0),
 OrderQuantity         number(38,0),
 UnitPrice             number(38,0),
 ExtendedAmount        number(38,0),
 UnitPriceDiscountPct  float,
 DiscountAmount        float,
 ProductStandardCost   number(38,0),
 TotalProductCost      number(38,0),
 SalesAmount           number(38,0),
 TaxAmt                number(38,0),
 Freight               number(38,0),
 CarrierTrackingNumber varchar(25),
 CustomerPONumber      varchar(25),

 CONSTRAINT "FK_${ParentTableName}_${TableName}" FOREIGN KEY ( ProductKey ) REFERENCES "ADVENTUREWORKSDW.EDW".sqldbm_DimProduct ( ProductKey ),
 CONSTRAINT "FK_${ParentTableName}_${TableName}" FOREIGN KEY ( ResellerKey ) REFERENCES "ADVENTUREWORKSDW.EDW".sqldbm_DimReseller ( ResellerKey ),
 CONSTRAINT "FK_${ParentTableName}_${TableName}" FOREIGN KEY ( EmployeeKey ) REFERENCES "ADVENTUREWORKSDW.EDW".sqldbm_DimEmployee ( EmployeeKey ),
 CONSTRAINT "FK_${ParentTableName}_${TableName}" FOREIGN KEY ( PromotionKey ) REFERENCES "ADVENTUREWORKSDW.EDW".sqldbm_DimPromotion ( PromotionKey ),
 CONSTRAINT "FK_${ParentTableName}_${TableName}" FOREIGN KEY ( CurrencyKey ) REFERENCES "ADVENTUREWORKSDW.EDW".sqldbm_DimCurrency ( CurrencyKey ),
 CONSTRAINT "FK_${ParentTableName}_${TableName}" FOREIGN KEY ( SalesTerritoryKey ) REFERENCES "ADVENTUREWORKSDW.EDW".sqldbm_DimSalesTerritory ( SalesTerritoryKey ),
 CONSTRAINT "FK_${ParentTableName}_${TableName}" FOREIGN KEY ( OrderDateKey ) REFERENCES "ADVENTUREWORKSDW.EDW".sqldbm_DimDate ( DateKey ),
 CONSTRAINT "FK_${ParentTableName}_${TableName}" FOREIGN KEY ( DueDateKey ) REFERENCES "ADVENTUREWORKSDW.EDW".sqldbm_DimDate ( DateKey ),
 CONSTRAINT "FK_${ParentTableName}_${TableName}" FOREIGN KEY ( ShipDateKey ) REFERENCES "ADVENTUREWORKSDW.EDW".sqldbm_DimDate ( DateKey )
)
COMMENT = 'Fact data of Reseller Sales';
