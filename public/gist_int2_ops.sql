create operator family gist_int2_ops using gist;

alter operator family gist_int2_ops using gist add
    operator 15 <->(smallint, smallint) for order by integer_ops,
    operator 6 <>(smallint,smallint),
    function 8(smallint, smallint) gbt_int2_distance(internal, smallint, smallint, oid, internal),
    function 7(smallint, smallint) gbt_int2_same(gbtreekey4, gbtreekey4, internal),
    function 6(smallint, smallint) gbt_int2_picksplit(internal, internal),
    function 5(smallint, smallint) gbt_int2_penalty(internal, internal, internal),
    function 4(smallint, smallint) gbt_decompress(internal),
    function 3(smallint, smallint) gbt_int2_compress(internal),
    function 2(smallint, smallint) gbt_int2_union(internal, internal),
    function 9(smallint, smallint) gbt_int2_fetch(internal),
    function 1(smallint, smallint) gbt_int2_consistent(internal, smallint, smallint, oid, internal);

alter operator family gist_int2_ops using gist owner to postgres;

create operator class gist_int2_ops default for type smallint using gist as storage gbtreekey4 operator 1 <(smallint,smallint),
	operator 2 <=(smallint,smallint),
	operator 3 =(smallint,smallint),
	operator 4 >=(smallint,smallint),
	operator 5 >(smallint,smallint),
	function 3(smallint, smallint) gbt_int2_compress(internal),
	function 1(smallint, smallint) gbt_int2_consistent(internal, smallint, smallint, oid, internal),
	function 2(smallint, smallint) gbt_int2_union(internal, internal),
	function 4(smallint, smallint) gbt_decompress(internal),
	function 5(smallint, smallint) gbt_int2_penalty(internal, internal, internal),
	function 6(smallint, smallint) gbt_int2_picksplit(internal, internal),
	function 7(smallint, smallint) gbt_int2_same(gbtreekey4, gbtreekey4, internal);

alter operator class gist_int2_ops using gist owner to postgres;

