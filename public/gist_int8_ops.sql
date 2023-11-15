create operator family gist_int8_ops using gist;

alter operator family gist_int8_ops using gist add
    operator 15 <->(bigint, bigint) for order by integer_ops,
    operator 6 <>(bigint,bigint),
    function 6(bigint, bigint) gbt_int8_picksplit(internal, internal),
    function 3(bigint, bigint) gbt_int8_compress(internal),
    function 4(bigint, bigint) gbt_decompress(internal),
    function 5(bigint, bigint) gbt_int8_penalty(internal, internal, internal),
    function 2(bigint, bigint) gbt_int8_union(internal, internal),
    function 7(bigint, bigint) gbt_int8_same(gbtreekey16, gbtreekey16, internal),
    function 8(bigint, bigint) gbt_int8_distance(internal, bigint, smallint, oid, internal),
    function 9(bigint, bigint) gbt_int8_fetch(internal),
    function 1(bigint, bigint) gbt_int8_consistent(internal, bigint, smallint, oid, internal);

alter operator family gist_int8_ops using gist owner to postgres;

create operator class gist_int8_ops default for type bigint using gist as storage gbtreekey16 operator 1 <(bigint,bigint),
	operator 2 <=(bigint,bigint),
	operator 3 =(bigint,bigint),
	operator 4 >=(bigint,bigint),
	operator 5 >(bigint,bigint),
	function 7(bigint, bigint) gbt_int8_same(gbtreekey16, gbtreekey16, internal),
	function 3(bigint, bigint) gbt_int8_compress(internal),
	function 2(bigint, bigint) gbt_int8_union(internal, internal),
	function 4(bigint, bigint) gbt_decompress(internal),
	function 6(bigint, bigint) gbt_int8_picksplit(internal, internal),
	function 1(bigint, bigint) gbt_int8_consistent(internal, bigint, smallint, oid, internal),
	function 5(bigint, bigint) gbt_int8_penalty(internal, internal, internal);

alter operator class gist_int8_ops using gist owner to postgres;

