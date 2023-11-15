create operator family gist_timetz_ops using gist;

alter operator family gist_timetz_ops using gist add
    operator 6 <>(time with time zone,time with time zone),
    function 3(time with time zone, time with time zone) gbt_timetz_compress(internal),
    function 1(time with time zone, time with time zone) gbt_timetz_consistent(internal, time with time zone, smallint, oid, internal),
    function 4(time with time zone, time with time zone) gbt_decompress(internal),
    function 2(time with time zone, time with time zone) gbt_time_union(internal, internal),
    function 5(time with time zone, time with time zone) gbt_time_penalty(internal, internal, internal),
    function 6(time with time zone, time with time zone) gbt_time_picksplit(internal, internal),
    function 7(time with time zone, time with time zone) gbt_time_same(gbtreekey16, gbtreekey16, internal);

alter operator family gist_timetz_ops using gist owner to postgres;

create operator class gist_timetz_ops default for type time with time zone using gist as storage gbtreekey16 operator 1 <(time with time zone,time with time zone),
	operator 2 <=(time with time zone,time with time zone),
	operator 3 =(time with time zone,time with time zone),
	operator 4 >=(time with time zone,time with time zone),
	operator 5 >(time with time zone,time with time zone),
	function 3(time with time zone, time with time zone) gbt_timetz_compress(internal),
	function 7(time with time zone, time with time zone) gbt_time_same(gbtreekey16, gbtreekey16, internal),
	function 5(time with time zone, time with time zone) gbt_time_penalty(internal, internal, internal),
	function 4(time with time zone, time with time zone) gbt_decompress(internal),
	function 6(time with time zone, time with time zone) gbt_time_picksplit(internal, internal),
	function 2(time with time zone, time with time zone) gbt_time_union(internal, internal),
	function 1(time with time zone, time with time zone) gbt_timetz_consistent(internal, time with time zone, smallint, oid, internal);

alter operator class gist_timetz_ops using gist owner to postgres;

