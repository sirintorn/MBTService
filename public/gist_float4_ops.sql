create operator family gist_float4_ops using gist;

alter operator family gist_float4_ops using gist add
    operator 15 <->(real, real) for order by float_ops,
    operator 6 <>(real,real),
    function 9(real, real) gbt_float4_fetch(internal),
    function 8(real, real) gbt_float4_distance(internal, real, smallint, oid, internal),
    function 7(real, real) gbt_float4_same(gbtreekey8, gbtreekey8, internal),
    function 6(real, real) gbt_float4_picksplit(internal, internal),
    function 5(real, real) gbt_float4_penalty(internal, internal, internal),
    function 4(real, real) gbt_decompress(internal),
    function 3(real, real) gbt_float4_compress(internal),
    function 2(real, real) gbt_float4_union(internal, internal),
    function 1(real, real) gbt_float4_consistent(internal, real, smallint, oid, internal);

alter operator family gist_float4_ops using gist owner to postgres;

create operator class gist_float4_ops default for type real using gist as storage gbtreekey8 operator 4 >=(real,real),
	operator 1 <(real,real),
	operator 5 >(real,real),
	operator 2 <=(real,real),
	operator 3 =(real,real),
	function 2(real, real) gbt_float4_union(internal, internal),
	function 5(real, real) gbt_float4_penalty(internal, internal, internal),
	function 3(real, real) gbt_float4_compress(internal),
	function 6(real, real) gbt_float4_picksplit(internal, internal),
	function 7(real, real) gbt_float4_same(gbtreekey8, gbtreekey8, internal),
	function 4(real, real) gbt_decompress(internal),
	function 1(real, real) gbt_float4_consistent(internal, real, smallint, oid, internal);

alter operator class gist_float4_ops using gist owner to postgres;

