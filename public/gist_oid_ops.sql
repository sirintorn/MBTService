create operator family gist_oid_ops using gist;

alter operator family gist_oid_ops using gist add
    operator 15 <->(oid, oid) for order by oid_ops,
    operator 6 <>(oid,oid),
    function 9(oid, oid) gbt_oid_fetch(internal),
    function 8(oid, oid) gbt_oid_distance(internal, oid, smallint, oid, internal),
    function 4(oid, oid) gbt_decompress(internal),
    function 5(oid, oid) gbt_oid_penalty(internal, internal, internal),
    function 7(oid, oid) gbt_oid_same(gbtreekey8, gbtreekey8, internal),
    function 6(oid, oid) gbt_oid_picksplit(internal, internal),
    function 1(oid, oid) gbt_oid_consistent(internal, oid, smallint, oid, internal),
    function 2(oid, oid) gbt_oid_union(internal, internal),
    function 3(oid, oid) gbt_oid_compress(internal);

alter operator family gist_oid_ops using gist owner to postgres;

create operator class gist_oid_ops default for type oid using gist as storage gbtreekey8 operator 1 <(oid,oid),
	operator 2 <=(oid,oid),
	operator 3 =(oid,oid),
	operator 4 >=(oid,oid),
	operator 5 >(oid,oid),
	function 4(oid, oid) gbt_decompress(internal),
	function 2(oid, oid) gbt_oid_union(internal, internal),
	function 1(oid, oid) gbt_oid_consistent(internal, oid, smallint, oid, internal),
	function 7(oid, oid) gbt_oid_same(gbtreekey8, gbtreekey8, internal),
	function 6(oid, oid) gbt_oid_picksplit(internal, internal),
	function 5(oid, oid) gbt_oid_penalty(internal, internal, internal),
	function 3(oid, oid) gbt_oid_compress(internal);

alter operator class gist_oid_ops using gist owner to postgres;

