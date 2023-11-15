create operator family gist__int_ops using gist;

alter operator family gist__int_ops using gist add
    operator 20 @@(integer[], query_int),
    operator 14 ~(integer[], integer[]),
    operator 13 @(integer[], integer[]),
    operator 8 <@(integer[], integer[]),
    operator 7 @>(integer[], integer[]),
    operator 3 &&(integer[], integer[]),
    function 5(integer[], integer[]) g_int_penalty(internal, internal, internal),
    function 7(integer[], integer[]) g_int_same(integer[], integer[], internal),
    function 3(integer[], integer[]) g_int_compress(internal),
    function 1(integer[], integer[]) g_int_consistent(internal, integer[], smallint, oid, internal),
    function 4(integer[], integer[]) g_int_decompress(internal),
    function 6(integer[], integer[]) g_int_picksplit(internal, internal),
    function 2(integer[], integer[]) g_int_union(internal, internal);

alter operator family gist__int_ops using gist owner to postgres;

create operator class gist__int_ops default for type integer[] using gist as
    operator 13 @(integer[], integer[]),
    operator 6 =(anyarray,anyarray),
    operator 7 @>(integer[], integer[]),
    operator 20 @@(integer[], query_int),
    operator 3 &&(integer[], integer[]),
    operator 14 ~(integer[], integer[]),
    operator 8 <@(integer[], integer[]),
    function 3(integer[], integer[]) g_int_compress(internal),
    function 1(integer[], integer[]) g_int_consistent(internal, integer[], smallint, oid, internal),
    function 7(integer[], integer[]) g_int_same(integer[], integer[], internal),
    function 6(integer[], integer[]) g_int_picksplit(internal, internal),
    function 2(integer[], integer[]) g_int_union(internal, internal),
    function 5(integer[], integer[]) g_int_penalty(internal, internal, internal),
    function 4(integer[], integer[]) g_int_decompress(internal);

alter operator class gist__int_ops using gist owner to postgres;

