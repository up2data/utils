create table nation (
 n_nationkey integer not null,
 n_name char(25) not null,
 n_regionkey integer not null,
 n_comment varchar(152)
); \g

create table region (
 r_regionkey integer not null,
 r_name char(25) not null,
 r_comment varchar(152)
); \g

create table part (
 p_partkey integer not null,
 p_name varchar(55) not null,
 p_mfgr char(25) not null,
 p_brand char(10) not null,
 p_type varchar(25) not null,
 p_size integer not null,
 p_container char(10) not null,
 p_retailprice decimal(15,2) not null,
 p_comment varchar(23) not null
); \g

create table supplier (
 s_suppkey integer not null,
 s_name char(25) not null,
 s_address varchar(40) not null,
 s_nationkey integer not null,
 s_phone char(15) not null,
 s_acctbal decimal(15,2) not null,
 s_comment varchar(101) not null
); \g

create table partsupp (
 ps_partkey integer not null,
 ps_suppkey integer not null,
 ps_availqty integer not null,
 ps_supplycost decimal(15,2) not null,
 ps_comment varchar(199) not null
); \g

create table customer (
 c_custkey integer not null,
 c_name varchar(25) not null,
 c_address varchar(40) not null,
 c_nationkey integer not null,
 c_phone char(15) not null,
 c_acctbal decimal(15,2) not null,
 c_mktsegment char(10) not null,
 c_comment varchar(117) not null
); \g

create table orders (
 o_orderkey integer not null,
 o_custkey integer not null,
 o_orderstatus char(1) not null,
 o_totalprice decimal(15,2) not null,
 o_orderdate ansidate not null,
 o_orderpriority char(15) not null,
 o_clerk char(15) not null,
 o_shippriority integer not null,
 o_comment varchar(79) not null
); \g

create table lineitem (
 l_orderkey integer not null,
 l_partkey integer not null,
 l_suppkey integer not null,
 l_linenumber integer not null,
 l_quantity decimal(15,2) not null,
 l_extendedprice decimal(15,2) not null,
 l_discount decimal(15,2) not null,
 l_tax decimal(15,2) not null,
 l_returnflag char(1) not null,
 l_linestatus char(1) not null,
 l_shipdate ansidate not null,
 l_commitdate ansidate not null,
 l_receiptdate ansidate not null,
 l_shipinstruct char(25) not null,
 l_shipmode char(10) not null,
 l_comment varchar(44) not null
); \g

create table benchmark_query_profile (
  tpc_query_id bigint not null,
  step_id bigint not null,
  session_id bigint not null,
  query_id bigint not null,
  start_time timestamp(6) with local time zone not null,
  execution_time interval day to second(6) not null,
  mem bigint not null,
  mem_total bigint not null,
  mem_vm bigint not null,
  mem_vm_total bigint not null
); \g

create table benchmark_io_profile (
  tpc_query_id bigint not null,
  step_id bigint not null,
  session_id bigint not null,
  query_id bigint not null,
  op_id bigint not null,
  table_name varchar(32) not null,
  columns varchar(64) not null,
  async_fetch bigint not null,
  async_miss bigint not null,
  sync_fetch bigint not null,
  sync_miss bigint not null
); \g
