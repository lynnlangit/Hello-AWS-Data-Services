/*customer-orders-lineitem*/ 
CREATE TABLE customer_orders_lineitem
(c_custkey bigint
,c_name varchar
,c_address varchar
,c_nationkey smallint
,c_phone varchar
,c_acctbal decimal(12,2)
,c_mktsegment varchar
,c_comment varchar
,c_orders super
);

/* Datamodel of documents to be stored in c_orders Super column would be as follows*/
ARRAY < STRUCT < o_orderkey:bigint
                           ,o_orderstatus:string
                           ,o_totalprice:double
                           ,o_orderdate:string
                           ,o_orderpriority:string
                           ,o_clerk:string
                           ,o_shippriority:int
                           ,o_comment:string
                           ,o_lineitems:ARRAY < STRUCT < l_partkey:bigint
                                                         ,l_suppkey:bigint
                                                         ,l_linenumber:int
                                                         ,l_quantity:double
                                                         ,l_extendedprice:double
                                                         ,l_discount:double
                                                         ,l_tax:double
                                                         ,l_returnflag:string
                                                         ,l_linestatus:string
                                                         ,l_shipdate:string
                                                         ,l_commitdate:string
                                                         ,l_receiptdate:string
                                                         ,l_shipinstruct:string
                                                         ,l_shipmode:string
                                                         ,l_comment:string
                                                         > >
                            > >

/*part*/
CREATE TABLE part
(
 p_partkey bigint
 ,p_name varchar
 ,p_mfgr varchar
 ,p_brand varchar
 ,p_type varchar
 ,p_size int
 ,p_container varchar
 ,p_retailprice decimal(12,2)
 ,p_comment varchar
 );
 
/*region-nations*/
CREATE TABLE region_nations
(
 r_regionkey smallint
 ,r_name varchar
 ,r_comment varchar
 ,r_nations super
 );
 
 /* Datamodel of documents to be stored in r_nations Super column would be as follows*/
 ARRAY < STRUCT < n_nationkey:int,n_name:string,n_comment:string > >
 
/*supplier-partsupp*/
CREATE TABLE supplier_partsupp
(
 s_suppkey bigint
 ,s_name varchar
 ,s_address varchar
 ,s_nationkey smallint
 ,s_phone varchar
 ,s_acctbal double precision
 ,s_comment varchar
 ,s_partsupps super
 );
 
 /* Datamodel of documents to be stored in s_partsupps Super column would be as follows*/
 ARRAY < STRUCT < ps_partkey:bigint,ps_availqty:int,ps_supplycost:double,ps_comment:string > >
