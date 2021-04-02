--subset of query patterns
--full example at https://docs.aws.amazon.com/redshift/latest/dg/query-super.html

COPY customer_orders_lineitem FROM 's3://redshift-downloads/semistructured/tpch-nested/data/json/customer_orders_lineitem'
REGION 'us-east-1' IAM_ROLE 'arn:aws:iam::xxxxxxxxxxxx:role/Redshift-S3'
FORMAT JSON 'auto';

SELECT c_orders[0].o_orderkey FROM customer_orders_lineitem;

--alterate query
SELECT cust.c_orders[0].o_orderkey FROM customer_orders_lineitem AS cust;

--filter
SELECT count(*) FROM customer_orders_lineitem WHERE c_orders[0]. o_orderkey IS NOT NULL;

--group by, order by
SELECT c_orders[0].o_orderdate,
       c_orders[0].o_orderstatus,
       count(*)
FROM customer_orders_lineitem
WHERE c_orders[0].o_orderkey IS NOT NULL
GROUP BY c_orders[0].o_orderstatus,
         c_orders[0].o_orderdate
ORDER BY c_orders[0].o_orderdate;