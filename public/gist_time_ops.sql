create operator family gist_time_ops using gist;

alter operator family gist_time_ops using gist add
    operator 6 <>(time without time zone,time without time zone),
    operator 15 <->(time, time) for order by interval_ops,
    function 1(time without time zone, time without time zone) gbt_time_consistent(internal, time, smallint, oid, internal),
    function 9(time without time zone, time without time zone) gbt_time_fetch(internal),
    function 8(time without time zone, time without time zone) gbt_time_distance(internal, time, smallint, oid, internal),
    function 7(time without time zone, time without time zone) gbt_time_same(gbtreekey16, gbtreekey16, internal),
    function 6(time without time zone, time without time zone) gbt_time_picksplit(internal, internal),
    function 5(time without time zone, time without time zone) gbt_time_penalty(internal, internal, internal),
    function 4(time without time zone, time without time zone) gbt_decompress(internal),
    function 3(time without time zone, time without time zone) gbt_time_compress(internal),
    function 2(time without time zone, time without time zone) gbt_time_union(internal, internal);

alter operator family gist_time_ops using gist owner to postgres;

create operator class gist_time_ops default for type time without time zone using gist as storage gbtreekey16 operator 4 >=(time without time zone,time without time zone),
	operator 2 <=(time without time zone,time without time zone),
	operator 3 =(time without time zone,time without time zone),
	operator 5 >(time without time zone,time without time zone),
	operator 1 <(time without time zone,time without time zone),
	function 3(time without time zone, time without time zone) gbt_time_compress(internal),
	function 2(time without time zone, time without time zone) gbt_time_union(internal, internal),
	function 4(time without time zone, time without time zone) gbt_decompress(internal),
	function 1(time without time zone, time without time zone) gbt_time_consistent(internal, time, smallint, oid, internal),
	function 5(time without time zone, time without time zone) gbt_time_penalty(internal, internal, internal),
	function 6(time without time zone, time without time zone) gbt_time_picksplit(internal, internal),
	function 7(time without time zone, time without time zone) gbt_time_same(gbtreekey16, gbtreekey16, internal);

alter operator class gist_time_ops using gist owner to postgres;

