create operator family gist_timestamp_ops using gist;

alter operator family gist_timestamp_ops using gist add
    operator 6 <>(timestamp without time zone,timestamp without time zone),
    operator 15 <->(timestamp, timestamp) for order by interval_ops,
    function 2(timestamp without time zone, timestamp without time zone) gbt_ts_union(internal, internal),
    function 9(timestamp without time zone, timestamp without time zone) gbt_ts_fetch(internal),
    function 8(timestamp without time zone, timestamp without time zone) gbt_ts_distance(internal, timestamp, smallint, oid, internal),
    function 7(timestamp without time zone, timestamp without time zone) gbt_ts_same(gbtreekey16, gbtreekey16, internal),
    function 6(timestamp without time zone, timestamp without time zone) gbt_ts_picksplit(internal, internal),
    function 5(timestamp without time zone, timestamp without time zone) gbt_ts_penalty(internal, internal, internal),
    function 4(timestamp without time zone, timestamp without time zone) gbt_decompress(internal),
    function 3(timestamp without time zone, timestamp without time zone) gbt_ts_compress(internal),
    function 1(timestamp without time zone, timestamp without time zone) gbt_ts_consistent(internal, timestamp, smallint, oid, internal);

alter operator family gist_timestamp_ops using gist owner to postgres;

create operator class gist_timestamp_ops default for type timestamp without time zone using gist as storage gbtreekey16 operator 3 =(timestamp without time zone,timestamp without time zone),
	operator 1 <(timestamp without time zone,timestamp without time zone),
	operator 5 >(timestamp without time zone,timestamp without time zone),
	operator 2 <=(timestamp without time zone,timestamp without time zone),
	operator 4 >=(timestamp without time zone,timestamp without time zone),
	function 6(timestamp without time zone, timestamp without time zone) gbt_ts_picksplit(internal, internal),
	function 3(timestamp without time zone, timestamp without time zone) gbt_ts_compress(internal),
	function 1(timestamp without time zone, timestamp without time zone) gbt_ts_consistent(internal, timestamp, smallint, oid, internal),
	function 7(timestamp without time zone, timestamp without time zone) gbt_ts_same(gbtreekey16, gbtreekey16, internal),
	function 4(timestamp without time zone, timestamp without time zone) gbt_decompress(internal),
	function 5(timestamp without time zone, timestamp without time zone) gbt_ts_penalty(internal, internal, internal),
	function 2(timestamp without time zone, timestamp without time zone) gbt_ts_union(internal, internal);

alter operator class gist_timestamp_ops using gist owner to postgres;

