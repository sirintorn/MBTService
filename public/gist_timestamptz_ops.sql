create operator family gist_timestamptz_ops using gist;

alter operator family gist_timestamptz_ops using gist add
    operator 15 <->(timestamp with time zone, timestamp with time zone) for order by interval_ops,
    operator 6 <>(timestamp with time zone,timestamp with time zone),
    function 2(timestamp with time zone, timestamp with time zone) gbt_ts_union(internal, internal),
    function 5(timestamp with time zone, timestamp with time zone) gbt_ts_penalty(internal, internal, internal),
    function 9(timestamp with time zone, timestamp with time zone) gbt_ts_fetch(internal),
    function 8(timestamp with time zone, timestamp with time zone) gbt_tstz_distance(internal, timestamp with time zone, smallint, oid, internal),
    function 7(timestamp with time zone, timestamp with time zone) gbt_ts_same(gbtreekey16, gbtreekey16, internal),
    function 3(timestamp with time zone, timestamp with time zone) gbt_tstz_compress(internal),
    function 6(timestamp with time zone, timestamp with time zone) gbt_ts_picksplit(internal, internal),
    function 4(timestamp with time zone, timestamp with time zone) gbt_decompress(internal),
    function 1(timestamp with time zone, timestamp with time zone) gbt_tstz_consistent(internal, timestamp with time zone, smallint, oid, internal);

alter operator family gist_timestamptz_ops using gist owner to postgres;

create operator class gist_timestamptz_ops default for type timestamp with time zone using gist as storage gbtreekey16 operator 5 >(timestamp with time zone,timestamp with time zone),
	operator 1 <(timestamp with time zone,timestamp with time zone),
	operator 3 =(timestamp with time zone,timestamp with time zone),
	operator 4 >=(timestamp with time zone,timestamp with time zone),
	operator 2 <=(timestamp with time zone,timestamp with time zone),
	function 4(timestamp with time zone, timestamp with time zone) gbt_decompress(internal),
	function 7(timestamp with time zone, timestamp with time zone) gbt_ts_same(gbtreekey16, gbtreekey16, internal),
	function 6(timestamp with time zone, timestamp with time zone) gbt_ts_picksplit(internal, internal),
	function 5(timestamp with time zone, timestamp with time zone) gbt_ts_penalty(internal, internal, internal),
	function 3(timestamp with time zone, timestamp with time zone) gbt_tstz_compress(internal),
	function 2(timestamp with time zone, timestamp with time zone) gbt_ts_union(internal, internal),
	function 1(timestamp with time zone, timestamp with time zone) gbt_tstz_consistent(internal, timestamp with time zone, smallint, oid, internal);

alter operator class gist_timestamptz_ops using gist owner to postgres;

