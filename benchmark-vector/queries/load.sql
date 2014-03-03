copy table nation (
 n_nationkey = 'c0|',
 n_name = 'c0|',
 n_regionkey = 'c0|',
 n_comment = 'c0nl'
) from 'nation.tbl'; 
\g

copy table region (
 r_regionkey = 'c0|',
 r_name = 'c0|',
 r_comment = 'c0nl'
) from 'region.tbl'; 
\g

copy table part (
 p_partkey = 'c0|',
 p_name = 'c0|',
 p_mfgr = 'c0|',
 p_brand = 'c0|',
 p_type = 'c0|',
 p_size = 'c0|',
 p_container = 'c0|',
 p_retailprice = 'c0|',
 p_comment = 'c0nl'
) from 'part.tbl'; 
\g

copy table supplier (
 s_suppkey = 'c0|',
 s_name = 'c0|',
 s_address = 'c0|',
 s_nationkey = 'c0|',
 s_phone = 'c0|',
 s_acctbal = 'c0|',
 s_comment = 'c0nl'
) from 'supplier.tbl'; 
\g

copy table partsupp (
 ps_partkey = 'c0|',
 ps_suppkey = 'c0|',
 ps_availqty = 'c0|',
 ps_supplycost = 'c0|',
 ps_comment = 'c0nl'
) from 'partsupp.tbl'; 
\g

copy table customer (
 c_custkey = 'c0|',
 c_name = 'c0|',
 c_address = 'c0|',
 c_nationkey = 'c0|',
 c_phone = 'c0|',
 c_acctbal = 'c0|',
 c_mktsegment = 'c0|',
 c_comment = 'c0nl'
) from 'customer.tbl'; 
\g

copy table orders (
 o_orderkey = 'c0|',
 o_custkey = 'c0|',
 o_orderstatus = 'c0|',
 o_totalprice = 'c0|',
 o_orderdate = 'c0|',
 o_orderpriority = 'c0|',
 o_clerk = 'c0|',
 o_shippriority = 'c0|',
 o_comment = 'c0nl'
) from 'orders.tbl'; 
\g

copy table lineitem (
 l_orderkey = 'c0|',
 l_partkey = 'c0|',
 l_suppkey = 'c0|',
 l_linenumber = 'c0|',
 l_quantity = 'c0|',
 l_extendedprice = 'c0|',
 l_discount = 'c0|',
 l_tax = 'c0|',
 l_returnflag = 'c0|',
 l_linestatus = 'c0|',
 l_shipdate = 'c0|',
 l_commitdate = 'c0|',
 l_receiptdate = 'c0|',
 l_shipinstruct = 'c0|',
 l_shipmode = 'c0|',
 l_comment = 'c0nl'
) from 'lineitem.tbl'; 
\g
