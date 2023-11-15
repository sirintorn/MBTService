create operator family gist_interval_ops using gist;

alter operator family gist_interval_ops using gist add
    operator 15 <->(interval, interval) for order by interval_ops,
    operator 6 <>(interval,interval),
    function 9(interval, interval) gbt_intv_fetch(internal),
    function 4(interval, interval) gbt_intv_decompress(internal),
    function 5(interval, interval) gbt_intv_penalty(internal, internal, internal),
    function 3(interval, interval) gbt_intv_compress(internal),
    function 6(interval, interval) gbt_intv_picksplit(internal, internal),
    function 2(interval, interval) gbt_intv_union(internal, internal),
    function 7(interval, interval) gbt_intv_same(gbtreekey32, gbtreekey32, internal),
    function 1(interval, interval) gbt_intv_consistent(internal, interval, smallint, oid, internal),
    function 8(interval, interval) gbt_intv_distance(internal, interval, smallint, oid, internal);

alter operator family gist_interval_ops using gist owner to postgres;

create operator class gist_interval_ops default for type interval using gist as storage gbtreekey32 operator 1 <(interval,interval),
	operator 5 >(interval,interval),
	operator 4 >=(interval,interval),
	operator 3 =(interval,interval),
	operator 2 <=(interval,interval),
	function 1(interval, interval) gbt_intv_consistent(internal, interval, smallint, oid, internal),
	function 2(interval, interval) gbt_intv_union(internal, internal),
	function 3(interval, interval) gbt_intv_compress(internal),
	function 6(interval, interval) gbt_intv_picksplit(internal, internal),
	function 7(interval, interval) gbt_intv_same(gbtreekey32, gbtreekey32, internal),
	function 4(interval, interval) gbt_intv_decompress(internal),
	function 5(interval, interval) gbt_intv_penalty(internal, internal, internal);

alter operator class gist_interval_ops using gist owner to postgres;

