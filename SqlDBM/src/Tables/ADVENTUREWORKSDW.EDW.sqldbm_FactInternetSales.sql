-- ************************** SqlDBM: Snowflake *************************
-- ************************* Generated by SqlDBM ************************


-- ************************************** "ADVENTUREWORKSDW.EDW".sqldbm_FactInternetSales
CREATE TABLE "ADVENTUREWORKSDW.EDW".sqldbm_FactInternetSales
(
 ProductKey            number(38,0) NOT NULL,
 OrderDateKey          number(38,0) NOT NULL,
 DueDateKey            number(38,0) NOT NULL,
 ShipDateKey           number(38,0) NOT NULL,
 CustomerKey           number(38,0) NOT NULL,
 PromotionKey          number(38,0) NOT NULL,
 CurrencyKey           number(38,0) NOT NULL,
 SalesTerritoryKey     number(38,0) NOT NULL,
 SalesOrderNumber      varchar(20) NOT NULL,
 SalesOrderLineNumber  number(38,0) NOT NULL,
 RevisionNumber        number(38,0) NOT NULL,
 OrderQuantity         number(38,0) NOT NULL,
 UnitPrice             number(38,0) NOT NULL,
 ExtendedAmount        number(38,0) NOT NULL,
 UnitPriceDiscountPct  float NOT NULL,
 DiscountAmount        float NOT NULL,
 ProductStandardCost   number(38,0) NOT NULL,
 TotalProductCost      number(38,0) NOT NULL,
 SalesAmount           number(38,0) NOT NULL,
 TaxAmt                number(38,0) NOT NULL,
 Freight               number(38,0) NOT NULL,
 CarrierTrackingNumber varchar(25),
 CustomerPONumber      varchar(25),

 CONSTRAINT "FK_${ParentTableName}_${TableName}" FOREIGN KEY ( ProductKey ) REFERENCES "ADVENTUREWORKSDW.EDW".sqldbm_DimProduct ( ProductKey ),
 CONSTRAINT "FK_${ParentTableName}_${TableName}" FOREIGN KEY ( CustomerKey ) REFERENCES "ADVENTUREWORKSDW.EDW".sqldbm_DimCustomer ( CustomerKey ),
 CONSTRAINT "FK_${ParentTableName}_${TableName}" FOREIGN KEY ( PromotionKey ) REFERENCES "ADVENTUREWORKSDW.EDW".sqldbm_DimPromotion ( PromotionKey ),
 CONSTRAINT "FK_${ParentTableName}_${TableName}" FOREIGN KEY ( CurrencyKey ) REFERENCES "ADVENTUREWORKSDW.EDW".sqldbm_DimCurrency ( CurrencyKey ),
 CONSTRAINT "FK_${ParentTableName}_${TableName}" FOREIGN KEY ( SalesTerritoryKey ) REFERENCES "ADVENTUREWORKSDW.EDW".sqldbm_DimSalesTerritory ( SalesTerritoryKey ),
 CONSTRAINT "FK_${ParentTableName}_${TableName}" FOREIGN KEY ( OrderDateKey ) REFERENCES "ADVENTUREWORKSDW.EDW".sqldbm_DimDate ( DateKey ),
 CONSTRAINT "FK_${ParentTableName}_${TableName}" FOREIGN KEY ( DueDateKey ) REFERENCES "ADVENTUREWORKSDW.EDW".sqldbm_DimDate ( DateKey ),
 CONSTRAINT "FK_${ParentTableName}_${TableName}" FOREIGN KEY ( ShipDateKey ) REFERENCES "ADVENTUREWORKSDW.EDW".sqldbm_DimDate ( DateKey )
)
COMMENT = 'Fact table to hold Currency Data';