-- @(#)15.sql    2.1.8.1
-- TPC-H/TPC-R Volume Shipping Query (Q7)
-- Functional Query Definition
-- Approved February 1998

create view revenue:s (supplier_no, total_revenue) as
	select
		l_suppkey,
		sum(l_extendedprice * (1 - l_discount))
	from
		lineitem
	where
		l_shipdate >= ':1'
		and l_shipdate < ':1' + interval '90' day
	group by
		l_suppkey;
\g
	
select
	s_suppkey,
	s_name,
	s_address,
	s_phone,
	total_revenue
from
	supplier,
	revenue:s
where
	s_suppkey = supplier_no
	and total_revenue = (
		select
			max(total_revenue)
		from
			revenue:s
	)
order by
	s_suppkey;
\g

drop view revenue:s;\g
