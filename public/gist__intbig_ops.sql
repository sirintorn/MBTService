create operator family gist__intbig_ops using gist;

alter operator family gist__intbig_ops using gist add
    operator 8 <@(integer[], integer[]),
    operator 3 &&(integer[], integer[]),
    operator 20 @@(integer[], query_int),
    operator 14 ~(integer[], integer[]),
    operator 13 @(integer[], integer[]),
    operator 7 @>(integer[], integer[]),
    function 5(integer[], integer[]) g_intbig_penalty(internal, internal, internal),
    function 1(integer[], integer[]) g_intbig_consistent(internal, integer[], smallint, oid, internal),
    function 2(integer[], integer[]) g_intbig_union(internal, internal),
    function 3(integer[], integer[]) g_intbig_compress(internal),
    function 4(integer[], integer[]) g_intbig_decompress(internal),
    function 6(integer[], integer[]) g_intbig_picksplit(internal, internal),
    function 7(integer[], integer[]) g_intbig_same(intbig_gkey, intbig_gkey, internal);

alter operator family gist__intbig_ops using gist owner to postgres;

create operator class gist__intbig_ops for type integer[] using gist as storage intbig_gkey operator 8 <@(integer[], integer[]),
	operator 14 ~(integer[], integer[]),
	operator 13 @(integer[], integer[]),
	operator 20 @@(integer[], query_int),
	operator 6 =(anyarray,anyarray),
	operator 7 @>(integer[], integer[]),
	operator 3 &&(integer[], integer[]),
	function 2(integer[], integer[]) g_intbig_union(internal, internal),
	function 7(integer[], integer[]) g_intbig_same(intbig_gkey, intbig_gkey, internal),
	function 6(integer[], integer[]) g_intbig_picksplit(internal, internal),
	function 5(integer[], integer[]) g_intbig_penalty(internal, internal, internal),
	function 4(integer[], integer[]) g_intbig_decompress(internal),
	function 3(integer[], integer[]) g_intbig_compress(internal),
	function 1(integer[], integer[]) g_intbig_consistent(internal, integer[], smallint, oid, internal);

alter operator class gist__intbig_ops using gist owner to postgres;

