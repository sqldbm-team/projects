-- **********************************************************************
-- ******* Generated by SqlDBM: demo, v6 by hazal.sener@sqldbm.com ******



-- ************************************** edw.vip_customer

CREATE TABLE edw.vip_customer
(
 custkey    bigint NOT NULL COMMENT 'Customer identifier',
 vip_points int NOT NULL
)
USING DELTA
 TBLPROPERTIES (delta.checkpoint.writeStatsAsJson = false, delta.checkpoint.writeStatsAsStruct = true, delta.minReaderVersion = 1, delta.minWriterVersion = 2)
;


-- ************************************** edw.supplier

CREATE TABLE edw.supplier
(
 suppkey   bigint NOT NULL,
 nationkey bigint NOT NULL,
 name      string,
 address   string,
 phone     string,
 acctbal   decimal(18, 2),
 comment   string,
 CONSTRAINT PK_2 PRIMARY KEY (suppkey, nationkey)
)
USING DELTA
 TBLPROPERTIES (delta.checkpoint.writeStatsAsJson = false, delta.checkpoint.writeStatsAsStruct = true, delta.minReaderVersion = 1, delta.minWriterVersion = 2, Property_demo = 'demo1')
;


-- ************************************** edw.sub_partsupp

CREATE TABLE edw.sub_partsupp
(
 sub_parsupp_key bigint NOT NULL,
 sub_availqty    int,
 sub_supplycost  decimal(18, 2)
)
USING DELTA
 TBLPROPERTIES (delta.checkpoint.writeStatsAsJson = false, delta.checkpoint.writeStatsAsStruct = true, delta.minReaderVersion = 1, delta.minWriterVersion = 2)
;


-- ************************************** edw.region

CREATE TABLE edw.region
(
 regionkey bigint,
 name      string,
 comment   string
)
USING DELTA
 TBLPROPERTIES (delta.checkpoint.writeStatsAsJson = false, delta.checkpoint.writeStatsAsStruct = true, delta.minReaderVersion = 1, delta.minWriterVersion = 2)
;


-- ************************************** edw.part

CREATE TABLE edw.part
(
 partkey     bigint,
 name        string,
 mfgr        string,
 brand       string,
 type        string,
 size        int,
 container   string,
 retailprice decimal(18, 2),
 comment     string
)
USING DELTA
 TBLPROPERTIES (delta.checkpoint.writeStatsAsJson = false, delta.checkpoint.writeStatsAsStruct = true, delta.minReaderVersion = 1, delta.minWriterVersion = 2)
;


-- ************************************** table_14

CREATE TABLE table_14
(
 new_pk   bigint NOT NULL CONSTRAINT PK_1 PRIMARY KEY,
 test_col string NOT NULL
);


-- ************************************** edw.supplier_child

CREATE TABLE edw.supplier_child
(
 suppkey   bigint NOT NULL,
 nationkey bigint NOT NULL,
 address   string,
 phone     string,
 comment   string,
 CONSTRAINT FK_1 FOREIGN KEY (suppkey, nationkey) REFERENCES edw.supplier (suppkey, nationkey)
);


-- ************************************** edw.partsupp

CREATE TABLE edw.partsupp
(
 partkey    bigint NOT NULL,
 suppkey    bigint NOT NULL,
 availqty   int,
 supplycost decimal(18, 2),
 comment    string
)
USING DELTA
 TBLPROPERTIES (delta.checkpoint.writeStatsAsJson = false, delta.checkpoint.writeStatsAsStruct = true, delta.minReaderVersion = 1, delta.minWriterVersion = 2)
;


-- ************************************** edw.nation

CREATE TABLE edw.nation
(
 nationkey bigint NOT NULL,
 name      string,
 regionkey bigint,
 comment   string
)
USING DELTA
 TBLPROPERTIES (delta.checkpoint.writeStatsAsJson = false, delta.checkpoint.writeStatsAsStruct = true, delta.minReaderVersion = 1, delta.minWriterVersion = 2)
;


-- ************************************** edw.customer_orders

CREATE TABLE edw.customer_orders
(
 custkey       bigint NOT NULL COMMENT 'Customer identifier',
 orderkey      bigint NOT NULL COMMENT 'Order identifier',
 custkey_1     bigint NOT NULL,
 name          string,
 address       string,
 phone         string,
 orderstatus   string,
 totalprice    decimal(18, 2),
 orderdate     date,
 orderpriority string,
 clerk         string
)
USING DELTA
 TBLPROPERTIES (delta.checkpoint.writeStatsAsJson = false, delta.checkpoint.writeStatsAsStruct = true, delta.minReaderVersion = 1, delta.minWriterVersion = 2)
 COMMENT 'It relates the customers and orders table with many to many relationship';


-- ************************************** edw.customer

CREATE TABLE edw.customer
(
 custkey      bigint NOT NULL COMMENT 'Customer identifier',
 nationkey    bigint NOT NULL COMMENT 'Customer nationality code',
 name         string COMMENT 'Customer name',
 address      string COMMENT 'Billing address',
 phone        string COMMENT 'Phone number of the customer',
 acctbal      decimal(18, 2),
 active_years bigint COMMENT 'Since when the customer is registered',
 mktsegment   string COMMENT 'Segment of the client',
 comment      string COMMENT 'Any additional comment about the customer',
 CONSTRAINT PK_3 PRIMARY KEY (custkey, nationkey)
)
USING DELTA
 TBLPROPERTIES (delta.checkpoint.writeStatsAsJson = false, delta.checkpoint.writeStatsAsStruct = true, delta.minReaderVersion = 1, delta.minWriterVersion = 2)
 COMMENT 'Customer master data';


-- ************************************** edw.orders

CREATE TABLE edw.orders
(
 orderkey      bigint NOT NULL,
 custkey       bigint NOT NULL,
 orderstatus   string,
 totalprice    decimal(18, 2),
 orderdate     date,
 orderpriority string,
 clerk         string,
 shippriority  int,
 comment       string
)
USING DELTA
 TBLPROPERTIES (delta.checkpoint.writeStatsAsJson = false, delta.checkpoint.writeStatsAsStruct = true, delta.minReaderVersion = 1, delta.minWriterVersion = 2)
;


-- ************************************** edw.lineitem

CREATE TABLE edw.lineitem
(
 linenumber    int NOT NULL,
 orderkey      bigint NOT NULL,
 custkey       bigint NOT NULL,
 partkey       bigint,
 suppkey       bigint NOT NULL,
 nationkey     bigint NOT NULL,
 quantity      decimal(18, 2),
 extendedprice decimal(18, 2),
 discount      decimal(18, 2),
 tax           decimal(18, 2),
 returnflag    string,
 linestatus    string,
 shipdate      date,
 commitdate    date,
 receiptdate   date,
 shipinstruct  string,
 shipmode      string,
 comment       string
)
USING DELTA
 TBLPROPERTIES (delta.checkpoint.writeStatsAsJson = false, delta.checkpoint.writeStatsAsStruct = true, delta.minReaderVersion = 1, delta.minWriterVersion = 2)
;

-- ************************************** edw.legacy_customer
CREATE VIEW edw.legacy_customer (
  custkey COMMENT 'Unique identification number',
  name COMMENT 'Customer name')
COMMENT 'View for legacy customers with over 5 years of loyalty'
TBLPROPERTIES (
  'transient_lastDdlTime' = '1677522410')
AS SELECT custkey, name
         FROM EDW.customer
        WHERE active_years >= 5
;

